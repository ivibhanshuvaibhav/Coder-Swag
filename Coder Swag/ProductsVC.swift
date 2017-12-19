//
//  ProductsVC.swift
//  Coder Swag
//
//  Created by Vibhanshu Vaibhav on 03/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products =  [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
        
        productsCollection.bounces = false
    }

    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategory: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
        cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
    
}
