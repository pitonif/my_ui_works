//
//  GroupCell.swift
//  UICollectionView
//
//  Created by Oleg on 17.02.2022.
//

import UIKit

class GroupCell: UICollectionViewCell {

    @IBOutlet weak var nameGroup: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    func setupCell(group: groupProduct) {
        self.nameGroup.text = group.name
    }
}
