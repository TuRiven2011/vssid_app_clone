//
//  NotificationViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 27/09/2023.
//

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

}

//extension NotificationViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//    }
//    
//    
//}
