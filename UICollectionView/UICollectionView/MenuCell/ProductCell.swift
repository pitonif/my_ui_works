//
//  ProductCell.swift
//  UICollectionView
//
//  Created by Oleg on 17.02.2022.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(product: Product) {
        self.productImage.image = product.image
    }

}
