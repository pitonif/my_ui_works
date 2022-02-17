//
//  Menu.swift
//  UICollectionView
//
//  Created by Oleg on 17.02.2022.
//

import Foundation
import UIKit

struct Product {
    var name: String
    var price: Float
    var image: UIImage
}


class Menu {
    var products = [Product]()
    
    init() {
        setup()
    }
    
    func setup() {
        var product1 = Product(name: "product1", price: 100.0, image: UIImage(named: "pr1")!)
        var product2 = Product(name: "product2", price: 200.0, image: UIImage(named: "pr2")!)
        var product3 = Product(name: "product3", price: 300.0, image: UIImage(named: "pr3")!)
        self.products = [product1, product2, product3]
    }
}
