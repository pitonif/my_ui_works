//
//  MyTableViewCell.swift
//  UITableViewController
//
//  Created by Oleg on 15.02.2022.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    public func refresh(_ model: Model) {
        nameLabel.text = model.name
        detailLabel.text = model.profession
    }

}
