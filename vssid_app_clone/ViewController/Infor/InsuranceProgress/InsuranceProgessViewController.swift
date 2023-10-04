

import UIKit

class InsuranceProgessViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var listItemStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configCollectionView()
        setupControlEvent()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        collectionView.collectionViewLayout = generateLayout()
    }


    @IBAction func popBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func configCollectionView() {
        collectionView.register(.init(nibName: "InsuranceProgressCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "InsuranceProgressCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
   
    
    func generateLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: collectionView.frame.height)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        return layout
    }
    
    func setupControlEvent() {
        for (index, element) in listItemStackView.arrangedSubviews.enumerated() {
            element.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapItem)))
        }
    }
    

}

extension InsuranceProgessViewController {
    @objc func handleTapItem(_ gesture: UITapGestureRecognizer) {
        collectionView.scrollToItem(at: .init(row: gesture.view?.tag ?? 0, section: 0), at: .centeredVertically, animated: true)
    }
}

extension InsuranceProgessViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InsuranceProgressCollectionViewCell", for: indexPath) as? InsuranceProgressCollectionViewCell else {return UICollectionViewCell()}
        
        cell.tapEye1Completion = {[weak self] in
            guard let self = self else {return}
            let vc = DetailInsuranceViewController()
            
            vc.modalTransitionStyle = .coverVertical
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: true)
        }
        
        cell.tapEye2Completion = {[weak self] in
            guard let self = self else {return}
            let vc = DetailInsuranceViewController()
            
            vc.modalTransitionStyle = .coverVertical
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: true)
        }
        
        cell.tapEye3Completion = {[weak self] in
            guard let self = self else {return}
            let vc = DetailInsuranceViewController()
            
            vc.modalTransitionStyle = .coverVertical
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: true)
        }
        
        return cell
    }
    
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        for cell in self.collectionView.visibleCells {
//            if let row = self.collectionView.indexPath(for: cell)?.item {
//              listItemStackView.arrangedSubviews.forEach { elemen in
//                  if(elemen.tag == row) {
//                      for sub in elemen.subviews {
//                          if let sub = sub as? UIImageView {
//                              sub.tintColor = UIColor.blue
//                          }
//                      }
//                  } else {
//                      for sub in elemen.subviews {
//                          if let sub = sub as? UIImageView {
//                              sub.tintColor = .darkGray
//                          }
//                      }
//                  }
//              }
//          }
//        }
//    }
    
   

}
