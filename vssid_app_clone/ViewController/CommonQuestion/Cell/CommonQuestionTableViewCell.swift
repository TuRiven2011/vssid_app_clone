//
//  CommonQuestionTableViewCell.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 27/09/2023.
//

import UIKit

class CommonQuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

 
    func binding(data: QuestionEntity) {
        questionLbl.text = data.question
    }
    
}
