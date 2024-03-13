//
//  HomeViewController.swift
//  ShoppingCart
//
//  Created by Vishnu on 08/12/2023.
//

import Foundation
import UIKit


class ProductListingController : UIViewController, UITableViewDelegate, UITableViewDataSource
{
    let productsLoader : ProductsLoader = ProductsLoader()
    let itemsTableView : UITableView = UITableView(frame: CGRectZero, style: UITableView.Style.grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        itemsTableView.frame=self.view.frame
        itemsTableView.delegate = self
        itemsTableView.dataSource = self
        itemsTableView.register(ProductsListsingCell.self, forCellReuseIdentifier: "cell")
        itemsTableView.frame=self.view.frame
        self.view.addSubview(itemsTableView)
        
     }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productsLoader.products.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :ProductsListsingCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductsListsingCell
        let productObj : Product = productsLoader.products[indexPath.row]
        cell.setProduct(product: productObj)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let productObj : Product = productsLoader.products[indexPath.row]
        let productDetailsViewController = ProductDetailsController()
        productDetailsViewController.setProduct(productObj: productObj)
        self.navigationController?.pushViewController(productDetailsViewController, animated: true)
    }
}

