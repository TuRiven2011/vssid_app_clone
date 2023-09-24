//
//  HelpViewController.swift
//  clone_vssid
//
//  Created by Phạm Bá Tú on 23/09/2023.
//

import UIKit

class HelpViewController: UIViewController {

    @IBOutlet weak var helpTableView: UITableView!
    
    let listData: [HelpEnum] = [
        .userManual,
        .chatBot,
        .hotline,
        .email,
        .question,
        .request
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configTableView()

        // Do any additional setup after loading the view.
    }
    
    private func configTableView() {
        helpTableView.register(.init(nibName: "HelpTableViewCell", bundle: nil), forCellReuseIdentifier: "HelpTableViewCell")
        helpTableView.dataSource = self
        helpTableView.delegate = self
        helpTableView.contentInset = .init(top: 20, left: 0, bottom: 50, right: 0)
    }
    
    




}

extension HelpViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HelpTableViewCell", for: indexPath) as? HelpTableViewCell else {return .init()}
        cell.binding(help: listData[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
}
