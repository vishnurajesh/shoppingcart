//
//  User.swift
//  ShoppingCart
//
//  Created by Vishnu on 06/12/2023.
//

import Foundation
import UIKit

class User
{
    let userName : String
    let userId : Int
    let userEmail : String
    let userPassword : String
    var cartItems : [Product]
    var boughtItems : [Product]
    
    init()
    {
         userName = "Vishnu"
         userId  = 23
         userEmail = "vishnurajesh88@gmail.com"
         userPassword = "Kumaran1"
         cartItems = []
         boughtItems = []
    }
    
    func verifyCredentials(userEmail : String?, passWord : String?) -> Bool
    {
        if let email = userEmail,  let passWord = passWord
        {
                if email == self.userEmail && passWord == self.userPassword
                {
                    return true
                }
            
        }
        return false
    }
}
