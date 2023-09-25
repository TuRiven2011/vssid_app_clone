//
//  ServiceViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

import UIKit

class ServiceViewController: UIViewController {

    @IBOutlet weak var serviceTableView: UITableView!
    
    @IBOutlet weak var serviceView: UIView!
    
    @IBOutlet weak var historyView: UIView!
    
    let listData: [ServiceEntity] = [
        .init(title: "[612A] CẤP LẠI THẺ BHYT DO HỎNG, MẤT", content: "Cấp lại thẻ BHYT do hỏng, mất không thay đổi thông tin"),
        .init(title: "[635] CHUYỂN ĐỊA BÀN HƯỞNG LƯƠNG HƯU, TRỢ CẤP BHXH", content: "Giải quyết chuyển hưởng sang địa bàn khác đối với người đang hưởng lương hưu, trợ cấp BHXH hàng tháng và người chờ hưởng lương hưu, trợ cấp hàng tháng"),
        .init(title: "[639] THAY ĐỔI HÌNH THỨC LĨNH HOẶC THÔNG TIN NGƯỜI HƯỞNG CHẾ ĐỘ BHXH", content: "Người hưởng lĩnh chế độ BHXH bằng tiền mặt chuyển sang lĩnh bằng tài khoản cá nhân và ngược lại, hoặc thay đổi thông tin người hưởng"),
        .init(title: "ĐĂNG KÝ TÀI KHOẢN CHO CON", content: "Đăng ký tài khoản giao dịch điện tử cho con"),
        .init(title: "[607A] CẤP LẠI SỔ BHXH KHÔNG THAY ĐỔI THÔNG TIN", content: "Cấp lại sổ BHXH không thay đổi thông tin"),
        .init(title: "[608A] CẤP LẠI SỔ BHXH DO THAY ĐỔI THÔNG TIN", content: "Cấp lại sổ Bảo hiểm xã hội do thay đổi thông tin"),
        .init(title: "[652] UỶ QUYỀN LĨNH THAY CÁC CHẾ ĐỘ BHXH, TRỢ CÂP THẤT NGHIỆP", content: "Uỷ quyền lĩnh thay các chế độ BHXH, trợ cấp thất nghiệp")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        serviceView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapChange(_:))))
        historyView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapChange(_:))))
        configTableView()
    }

    func configTableView(){
        serviceTableView.register(.init(nibName: "ServiceTableViewCell", bundle: nil), forCellReuseIdentifier: "ServiceTableViewCell")
        serviceTableView.delegate = self
        serviceTableView.dataSource = self
        
        serviceTableView.estimatedRowHeight = 60
        serviceTableView.rowHeight = UITableView.automaticDimension
    }
    
    @objc func didTapChange(_ gesture: UITapGestureRecognizer) {
        guard let target = gesture.view else {return}
        if target == serviceView {
            
        } else {
            
        }
    }
 
}

extension ServiceViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ServiceTableViewCell") as? ServiceTableViewCell else {return UITableViewCell()}
        cell.binding(data: listData[indexPath.row])
        
        return cell
    }
    
    
    
}
