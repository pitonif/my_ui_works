//
//  ProductCell.swift
//  UICollectionView
//
//  Created by Oleg on 17.02.2022.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(product: Product) {
        self.productImage.image = product.image
        self.productName.text = product.name
        self.productPrice.text = String(product.price)
    }

}
