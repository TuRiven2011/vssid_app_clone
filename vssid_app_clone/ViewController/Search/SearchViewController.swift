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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchColectionView.delegate = self
        searchColectionView.dataSource = self
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 2 {
            let vc = SearchPlaceViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
