//
//  InforTableViewCell.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

import UIKit

class InforTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: UIImageView!
    
    @IBOutlet weak var labelViewCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func binding(data: InforEntity) {
        
        imageViewCell.image = data.image
        labelViewCell.text = data.title
        
    }
    
}
