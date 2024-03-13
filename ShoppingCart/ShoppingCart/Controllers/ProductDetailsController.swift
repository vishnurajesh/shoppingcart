//
//  ProductDetailsController.swift
//  ShoppingCart
//
//  Created by Vishnu on 02/01/2024.
//

import Foundation
import UIKit

class ProductDetailsController : UIViewController
{
    var productImageView : UIImageView = UIImageView()
    var titleLabel : UILabel = UILabel()
    var descriptionLabel : UILabel = UILabel()
    var priceLabel : UILabel = UILabel()
    var productCount : UILabel = UILabel()
    var ratingsLabel : UILabel = UILabel()
    var scrollView : UIScrollView = UIScrollView()
    var addToCartButton : UIButton = UIButton()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        addToCartButton.backgroundColor=UIColor.red
        addToCartButton.setTitle("Add to Cart", for: .normal)
        addToCartButton.addTarget(self, action: #selector(addToCart), for: UIControl.Event.touchUpInside)
     
        
        productImageView.image=UIImage(named: "iphone")
        productImageView.clipsToBounds=true;
        productImageView.contentMode=UIView.ContentMode.scaleToFill
        
        
        addToCartButton.translatesAutoresizingMaskIntoConstraints=false
        scrollView.translatesAutoresizingMaskIntoConstraints=false
        productImageView.translatesAutoresizingMaskIntoConstraints=false
        titleLabel.translatesAutoresizingMaskIntoConstraints=false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints=false
        priceLabel.translatesAutoresizingMaskIntoConstraints=false
        productCount.translatesAutoresizingMaskIntoConstraints=false
        ratingsLabel.translatesAutoresizingMaskIntoConstraints=false
      
        ratingsLabel.backgroundColor=UIColor.blue
        titleLabel.backgroundColor=UIColor.yellow
        descriptionLabel.backgroundColor=UIColor.orange
        scrollView.backgroundColor=UIColor.green
        
        ratingsLabel.textAlignment=NSTextAlignment.right
        titleLabel.font=UIFont.boldSystemFont(ofSize: 18)
        descriptionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        descriptionLabel.numberOfLines=0
        descriptionLabel.textColor=UIColor.gray
        priceLabel.font=UIFont.boldSystemFont(ofSize: 18)
        
        scrollView.addSubview(productImageView)
        scrollView.addSubview(titleLabel)
        scrollView.addSubview(descriptionLabel)
        scrollView.addSubview(priceLabel)
        scrollView.addSubview(productCount)
        scrollView.addSubview(ratingsLabel)
        scrollView.addSubview(addToCartButton)
        
        scrollView.alwaysBounceVertical=true
        
        self.view.backgroundColor=UIColor.white
        self.view.addSubview(scrollView)
        
        self.addConstraints()
    }
    
    func addConstraints()
    {
        
        scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive=true
        scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive=true
        scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive=true
        scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive=true
        
        titleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive=true
        titleLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive=true
        titleLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.5, constant: -10).isActive=true
        
        ratingsLabel.leadingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor, constant: 10).isActive=true
        ratingsLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive=true
        ratingsLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.5, constant: -20).isActive=true
        
        descriptionLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive=true
      //  descriptionLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10).isActive=true
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive=true
        descriptionLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1, constant: -20).isActive=true
        
        
        productImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive=true
        productImageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -20).isActive=true
        productImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10).isActive=true
        productImageView.heightAnchor.constraint(equalToConstant: 500).isActive=true
        
        addToCartButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive=true
        addToCartButton.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -20).isActive=true
        addToCartButton.topAnchor.constraint(equalTo: productImageView.bottomAnchor, constant: 40).isActive=true
        //addToCartButton.heightAnchor.constraint(equalToConstant: 50).isActive=true
        
    }
    
    @objc func addToCart()
    {
        print("vioshnu")
    }
    
    func setProduct (productObj : Product)
    {
        titleLabel.text=productObj.productName
        descriptionLabel.text = productObj.productDescription
        ratingsLabel.text = String( productObj.ratingsCount)
     }
}


