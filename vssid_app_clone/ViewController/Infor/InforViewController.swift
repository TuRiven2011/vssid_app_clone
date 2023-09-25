//
//  InforViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

import UIKit

class InforViewController: UIViewController {

    @IBOutlet weak var inforTableView: UITableView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var insuranceIdLbl: UILabel!
    
    @IBOutlet weak var birdayLbl: UILabel!
    
    @IBOutlet weak var personalIDLbl: UILabel!
    
    @IBOutlet weak var phoneLbl: UILabel!
    
    @IBOutlet weak var addressLbl: UILabel!
    
    
    let listData: [InforEnum] = [.profileImage, .name, .insuranceId, .birthday, .personalID, .phone, .address]
    let listEntity : [InforEntity] = [
        .init(image: UIImage(named: "new_icon_the_bhyt")!, title: "THẺ BHYT"),
        .init(image: UIImage(named: "new_icon_qttg")!, title: "QUÁ TRÌNH THAM GIA"),
        .init(image: UIImage(named: "new_icon_tt_huong")!, title: "THÔNG TIN HƯỞNG"),
        .init(image: UIImage(named: "new_icon_so_kcb")!, title: "SỔ KHÁM CHỮA BỆNH")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        binding()
    }
  
    func configTableView() {
        inforTableView.register(.init(nibName: "InforTableViewCell", bundle: nil), forCellReuseIdentifier: "InforTableViewCell")
        inforTableView.delegate = self
        inforTableView.dataSource = self
    }
    
    func binding() {
        
        profileImage.image = UIImage(named: listData[0].infor)
        nameLbl.text = listData[1].infor
        insuranceIdLbl.text = listData[2].infor
        birdayLbl.text = listData[3].infor
        personalIDLbl.text = listData[4].infor
        phoneLbl.text = listData[5].infor
        addressLbl.text = listData[6].infor
    }
  

}

extension InforViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listEntity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InforTableViewCell", for: indexPath) as? InforTableViewCell else {return .init()}
        cell.binding(data: listEntity[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = InsuranceInforViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 1 {
            let vc = InsuranceProgessViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}
