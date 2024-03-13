//
//  CartCreator.swift
//  ShoppingCart
//
//  Created by Vishnu on 09/12/2023.
//

import Foundation

class ProductsLoader
{
    var products : [Product] = []
    
    init() {
        if let startWordsURL = Bundle.main.url(forResource: "Products", withExtension: "csv") {
            if let startWords = try? String(contentsOf: startWordsURL) {
              let  productItems = startWords.components(separatedBy: "\n")
                for productItem in productItems{
                    if !productItem.isEmpty{
                        let productDetails : [String] = productItem.components(separatedBy: ",")
                        let productObj : Product = Product(productDetails: productDetails)
                        products.append(productObj)
                    }
                }
            }
        }

    }
}
