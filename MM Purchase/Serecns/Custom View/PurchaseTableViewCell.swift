//
//  PurchaseTableViewCell.swift
//  MM Purchase
//
//  Created by Shishir_Mac on 3/4/23.
//

import UIKit

class PurchaseTableViewCell: UITableViewCell {
    @IBOutlet weak var proLogoImage: UIImageView!
    @IBOutlet weak var featuredLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        featuredLabel.textColor = Colors.text_color_one.uiColor()
        featuredLabel.font = UIFont(name: "Inter-Regular", size: 16.0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
