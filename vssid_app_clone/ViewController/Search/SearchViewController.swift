//
//  SearchViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 24/09/2023.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchColectionView: UICollectionView!
    
    let listData : [SearchEnum] = [ .fifth, .second, .third, .fourth, .fifth, .sixth]
    let titles: [String] = ["TRA CỨU MÃ SỐ BHXH", "TRA CỨU CƠ QUAN BHXH", "TRA CỨU CSKCB CẤP GIẤY NGHỈ", "TRA CỨU CSKCB KÝ HỢP ĐỒNG KCB", "TRA CỨU ĐƠN VỊ THAM GIA BHXH", "TRA CỨU TỔ CHỨC DỊCH VỤ THU BHXH, BHYT"]
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar(title: "Tra cứu trực tuyến".uppercased())
        searchColectionView.delegate = self
        searchColectionView.dataSource = self
        searchColectionView.contentInset = .init(top: 20, left: 0, bottom: 0, right: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.isHidden = true
        
    }
    
    private func setupNavigationBar(title: String) {
        
        navigationItem.title = title
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = UIColor(rgb: 0xFF2B65AC)
            appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance

        } else {
            self.navigationController?.navigationBar.tintColor = .white
            self.navigationController?.navigationBar.barTintColor = UIColor(rgb: 0xFF2B65AC)
            self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        }
        
        let menu = UIImageView(image: .init(named: "menu"))
        menu.isUserInteractionEnabled = true
        menu.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showSideBar)))
        
        menu.translatesAutoresizingMaskIntoConstraints = false
        navigationController?.navigationBar.addSubview(menu)
        
        if let navigationBar = navigationController?.navigationBar {
            [
                menu.widthAnchor.constraint(equalToConstant: 26),
                menu.heightAnchor.constraint(equalToConstant: 26),
                menu.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 20),
                menu.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -10),
            ].forEach({$0.isActive = true})
        }
        
    }
    


}

extension SearchViewController {
    @objc func showSideBar() {
        NotificationCenter.default.post(name: .SHOW_SIDE_MENU, object: nil)
    }
    
    @objc func gotoNotificationVC() {
        let vc = NotificationViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        listData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath) as? SearchCollectionViewCell else {return UICollectionViewCell()}
        cell.binding(data: listData[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: searchColectionView.frame.width/2, height: searchColectionView.frame.width/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
            let vc = SearchPlaceViewController()
            vc.titleText = titles[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)

    }
    
}
