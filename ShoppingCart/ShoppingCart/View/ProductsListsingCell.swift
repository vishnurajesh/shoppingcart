//
//  ProductsListsingCell.swift
//  ShoppingCart
//
//  Created by Vishnu on 18/12/2023.
//
import UIKit
import Foundation

class ProductsListsingCell : UITableViewCell
{
    var productImageView : UIImageView=UIImageView()
    var titleLabel : UILabel = UILabel()
    var descriptionLabel : UILabel = UILabel()
    var priceLabel : UILabel = UILabel()
    var productCount : UILabel = UILabel()
    var ratingsLabel : UILabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        productImageView.translatesAutoresizingMaskIntoConstraints=false
        titleLabel.translatesAutoresizingMaskIntoConstraints=false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints=false
        priceLabel.translatesAutoresizingMaskIntoConstraints=false
        productCount.translatesAutoresizingMaskIntoConstraints=false
        ratingsLabel.translatesAutoresizingMaskIntoConstraints=false
      
        titleLabel.font=UIFont.boldSystemFont(ofSize: 18)
        descriptionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        descriptionLabel.numberOfLines=0
        descriptionLabel.textColor=UIColor.gray
        priceLabel.font=UIFont.boldSystemFont(ofSize: 18)
        
        self.contentView.addSubview(productImageView)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(descriptionLabel)
        self.contentView.addSubview(priceLabel)
        self.contentView.addSubview(productCount)
        self.contentView.addSubview(ratingsLabel)
    
        productImageView.image=UIImage(named: "iphone")
        productImageView.contentMode=UIView.ContentMode.scaleAspectFit
        
        titleLabel.translatesAutoresizingMaskIntoConstraints=false
        
        self.setContraints()
    }
    
    func setContraints()
    {
        
        productImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 22).isActive = true
        productImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 21).isActive=true
        productImageView.widthAnchor.constraint(equalToConstant:120).isActive=true
        productImageView.heightAnchor.constraint(equalToConstant: 120).isActive=true
        productImageView.bottomAnchor.constraint(lessThanOrEqualTo:self.contentView.bottomAnchor, constant: -10).isActive=true
       
       
        titleLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 10).isActive=true
        titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 20).isActive=true
        
        descriptionLabel.backgroundColor=UIColor.red
        descriptionLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 10).isActive=true
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive=true
        descriptionLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10).isActive=true
        
        priceLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 10).isActive=true
        priceLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10).isActive=true
        priceLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10).isActive=true
        priceLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10).isActive=true
        
    }
    
    func setProduct(product : Product)
    {
        titleLabel.text=product.productName
        descriptionLabel.text=product.productDescription
        priceLabel.text="Rs."+String(product.proudctPrice)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


