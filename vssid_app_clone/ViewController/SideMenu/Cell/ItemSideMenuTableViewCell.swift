//
//  ItemSideMenuTableViewCell.swift
//  vssid_app_clone
//
//  Created by Phạm Bá Tú on 28/09/2023.
//

import UIKit

class ItemSideMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var imageMenu: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func binding(data: SideMenuEnum) {
        imageMenu.image = data.image
        titleLabel.text = data.title
    }
    
}
