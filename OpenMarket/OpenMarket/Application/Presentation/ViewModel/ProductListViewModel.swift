//
//  ProductListViewModel.swift
//  OpenMarket
//
//  Created by 데릭, 수꿍.
//

import UIKit

final class ProductListViewModel {
    // MARK: Properties
    
    private var productEntity: ProductEntity?
    
    weak var delegate: ProductListDelegate?
    
    var thumbnail: String? {
        guard let product = productEntity else {
            return nil
        }
        
        return product.thumbnail
    }
    
    var name: String? {
        guard let product = productEntity else {
            return nil
        }
        
        return product.name
    }
    
    var currency: String? {
        guard let product = productEntity else {
            return nil
        }
        
        return product.currency
    }
    
    var originalPriceText: String? {
        guard let product = productEntity,
        let originalPriceText = product.originalPrice.numberFormatter() else {
            return nil
        }
        
        return product.currency + " " + originalPriceText
    }
    
    var discountedPriceText: String? {
        guard let product = productEntity,
              let discountedPriceText = product.discountedPrice.numberFormatter() else {
            return nil
        }
        
        return product.currency + " " + discountedPriceText
    }
    
    var stockText: String? {
        guard let product = productEntity else {
            return nil
        }
        
        return isEmptyStock == true
            ? ProductStatus.emptyStock.rawValue
            : ProductStatus.leftOver.rawValue + " : \(product.stock)"
    }
    
    var isDiscountedItem: Bool? {
        guard let product = productEntity else {
            return nil
        }
        
        return product.originalPrice != product.discountedPrice
    }
    
    var isEmptyStock: Bool? {
        guard let product = productEntity else {
            return nil
        }
        
        return product.stock == 0
    }
    
    // MARK: - Initializer
    
    init(_ productEntity: ProductEntity) {
        self.productEntity = productEntity
    }
    
    init() { }

    func format(data: ProductList) {
        var entityList = ProductListEntity(productEntity: [])
       
        for product in data.pages {
            entityList.productEntity.append(
                ProductEntity(
                    id: product.id,
                    vendorID: product.vendorID,
                    thumbnail: product.thumbnail,
                    name: product.name,
                    currency: product.currency.rawValue,
                    originalPrice: product.price,
                    discountedPrice: product.bargainPrice,
                    stock: product.stock))
        }
        
        delegate?.productListViewController(ProductListViewController.self,
                                            didRecieve: entityList)
    }
}
