//
//  Product.swift
//  ShoppingCart
//
//  Created by Vishnu on 06/12/2023.
//

import Foundation
import TabularData

class Product
{
    var productName : String
    var productId : Int
    var productDescription : String
    var proudctPrice : Int
    var availableCount : Int
    var ratingsCount : Int
    var averageRating : Float
    
    init(productDetails : [String])
    {
        
        self.productName = productDetails[0]
        self.productId = Int(productDetails[1]) ?? 0
        self.productDescription = productDetails[2]
        self.proudctPrice = Int(productDetails[3]) ?? 0
        self.availableCount = Int(productDetails[4]) ?? 0
        self.ratingsCount = Int(productDetails[5]) ?? 0
        self.averageRating = Float(productDetails[6]) ?? 0
        
    }
}
