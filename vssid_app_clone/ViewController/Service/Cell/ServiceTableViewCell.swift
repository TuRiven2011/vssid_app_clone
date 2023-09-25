//
//  ServiceTableViewCell.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

import UIKit

class ServiceTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var contentLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func binding(data: ServiceEntity) {
        titleLbl.text = data.title
        contentLbl.text = data.content
    }
    
}
