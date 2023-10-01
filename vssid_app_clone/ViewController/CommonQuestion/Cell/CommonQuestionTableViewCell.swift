

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
