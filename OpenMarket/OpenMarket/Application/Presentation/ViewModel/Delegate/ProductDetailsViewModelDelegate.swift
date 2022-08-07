//
//  ProductDetailsViewModelDelegate.swift
//  OpenMarket
//
//  Created by 데릭, 수꿍.
//

import UIKit

protocol ProductDetailsViewModelDelegate: AnyObject {
    func productDetailsViewController(_ viewController: ProductDetailsViewController.Type,
                            didRecieve images: [UIImage])
    func productDetailsViewController(_ viewController: ProductDetailsViewController.Type,
                            didRecieve productInfo: ProductDetailsEntity)
    func productDetailsViewController(_ viewController: ProductDetailsViewController.Type,
                            didRecieve productSecret: String)
}
