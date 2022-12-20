//
//  ProductDetailsAPIManager.swift
//  OpenMarket
//
//  Created by 데릭, 수꿍.
//

import Foundation

struct ProductDetailsAPIManager: GETProtocol {
    var configuration: APIConfiguration
    var urlComponents: URLComponents
    
    init?(productID: Int) {
        urlComponents = URLComponentsBuilder()
            .setScheme("https")
            .setHost("openmarket.yagom-academy.kr")
            .setPath("/api/products/\(productID)")
            .build()
        
        guard let url = urlComponents.url else {
            return nil
        }
        
        configuration = APIConfiguration(url: url)
    }
}
