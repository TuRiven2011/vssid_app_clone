

import UIKit

class DetailInsuranceViewController: UIViewController {

    @IBOutlet weak var endMonth: UILabel!
    @IBOutlet weak var startMonth: UILabel!
    @IBOutlet weak var backButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backButton.isUserInteractionEnabled = true
        backButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(back)))
        // Do any additional setup after loading the view.
    }

    @objc func back() {
        
        dismiss(animated: true)
//        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
