//
//  Menu.swift
//  UICollectionView
//
//  Created by Oleg on 17.02.2022.
//

import Foundation
import UIKit

struct groupProduct {
    var name: String
    var products: [Product]
}

struct Product {
    var name: String
    var price: Float
    var image: UIImage
}


class Menu {
    var groups = [groupProduct]()
    
    init() {
        setup()
    }
    
    func setup() {
        var product1 = Product(name: "product1", price: 100.0, image: UIImage(named: "pr1")!)
        var product2 = Product(name: "product2", price: 100.0, image: UIImage(named: "pr1")!)
        var product3 = Product(name: "product3", price: 100.0, image: UIImage(named: "pr1")!)
        
        var product4 = Product(name: "product1", price: 200.0, image: UIImage(named: "pr2")!)
        var product5 = Product(name: "product2", price: 200.0, image: UIImage(named: "pr2")!)
        var product6 = Product(name: "product3", price: 200.0, image: UIImage(named: "pr2")!)
        
        var product7 = Product(name: "product1", price: 300.0, image: UIImage(named: "pr3")!)
        var product8 = Product(name: "product2", price: 300.0, image: UIImage(named: "pr3")!)
        var product9 = Product(name: "product3", price: 300.0, image: UIImage(named: "pr3")!)
        
        let products1 = [product1, product2, product3]
        let group1 = groupProduct(name: "Air Force", products: products1)
        
        let products2 = [product4, product5, product6]
        let group2 = groupProduct(name: "Air Jordan", products: products2)
        
        let products3 = [product7, product8, product9]
        let group3 = groupProduct(name: "Dunk", products: products3)
        
        self.groups = [group1, group2, group3]
        
        
        
        
       // self.products = [product1, product2, product3]
    }
}
