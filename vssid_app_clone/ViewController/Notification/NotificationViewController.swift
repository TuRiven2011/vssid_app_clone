

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var notiTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configTableView()
    }

    func configTableView() {
        notiTableView.register(.init(nibName: "NotiTableViewCell", bundle: nil), forCellReuseIdentifier: "NotiTableViewCell")
//        notiTableView.delegate = self
//        notiTableView.dataSource = self
        
    }

    @IBAction func popBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

//extension NotificationViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
    
    
//}
