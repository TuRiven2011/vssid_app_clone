

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var questionLbl2: UILabel!
    
    @IBOutlet weak var answerLbl: UILabel!
    
    var data: QuestionEntity?
    override func viewDidLoad() {
        super.viewDidLoad()

        binding()
    }

    func binding() {
        questionLbl.text = data?.question
        questionLbl2.text = data?.question
        answerLbl.text = data?.answer
    }
    

}
