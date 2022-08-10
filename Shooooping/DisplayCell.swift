//
//  DisplayCell.swift
//  Shooooping
//
//  Created by Jitesh Aggarwal on 10/08/22.
//

import UIKit

class DisplayCell: UITableViewCell {

    @IBOutlet weak var displayCell: UIView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
