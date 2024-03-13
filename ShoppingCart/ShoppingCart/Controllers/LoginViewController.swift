//
//  ViewController.swift
//  ShoppingCart
//
//  Created by Vishnu on 05/12/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var passwordTextbox: UITextField!
    @IBOutlet weak var userEmailTextBox: UITextField!
    
    
    let userObj : User = User()
    
    @IBAction func tappedLogin(_ sender: Any) {
//        let typedUserEmail = userEmailTextBox.text
//        let typedPassword = passwordTextbox.text
//        
//        let creditalStatus = userObj.verifyCredentials(userEmail: typedUserEmail, passWord: typedPassword)
//        
//        if creditalStatus == true
 //       {
            print("Succesful login")
            let homeVC : ProductListingController = ProductListingController()
            self.navigationController?.pushViewController(homeVC, animated: true)
 //       }
//        else
//        {
//           print("Login Failed")
//       }
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        passwordTextbox.isSecureTextEntry = true
        self.title="Shopping Cart"
        
//        let imageView : UIImageView = UIImageView()
//        let imagName   = UIImage(named: "iphone")
//        imageView.image = imagName
//        imageView.translatesAutoresizingMaskIntoConstraints=false
//        //imageView.frame=CGRectMake(10, 10, 100, 100)
//        imageView.clipsToBounds=true
//        
//        self.view.addSubview(imageView)
//        
//        imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive=true
//        imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive=true
//        imageView.widthAnchor.constraint(equalToConstant: 200).isActive=true
//        imageView.heightAnchor.constraint(equalToConstant: 200).isActive=true
//        

        
    }
  
}

