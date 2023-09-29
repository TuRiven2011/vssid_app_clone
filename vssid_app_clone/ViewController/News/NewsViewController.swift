//
//  NewsViewController.swift
//  vssid_app_clone
//
//  Created by Phạm Bá Tú on 28/09/2023.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var newsTableView: UITableView!
    
    var refreshControl: UIRefreshControl = .init()
    
//    var listData: [NewsEntity] = [
//        .init(title: "Chuyển đổi số", titleImage: "", titleNews: "Quy trình số hoá hồ sơ, giấy tờ TTHC của ngành BHXH Việt Nam", description: "", date: "26/9/2023")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configTableView()
        configControlEvent()
        // Do any additional setup after loading the view.
    }


    private func configTableView() {
        newsTableView.register(.init(nibName: "NewsTableViewCell",
                                     bundle: nil),
                               forCellReuseIdentifier: "NewsTableViewCell")
        newsTableView.dataSource = self
        newsTableView.delegate = self
        
        newsTableView.refreshControl = refreshControl
    }
    
    private func configControlEvent() {
        backImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleBack)))
    }

}

extension NewsViewController {
    @objc func handleBack() {
        navigationController?.popViewController(animated: true)
    }
}

extension NewsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as? NewsTableViewCell else {return .init()}
        
        return cell
    }
}
