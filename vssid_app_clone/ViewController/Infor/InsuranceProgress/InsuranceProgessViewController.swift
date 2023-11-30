

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
        collectionView.register(.init(nibName: "InsuranceProgressCollectionViewCell",
                                      bundle: nil),
                                forCellWithReuseIdentifier: "InsuranceProgressCollectionViewCell")
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
        for (_, element) in listItemStackView.arrangedSubviews.enumerated() {
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
        
        if indexPath.row == 3 {
            cell.lateTime.isHidden = true
        } else {
            cell.lateTime.isHidden = false
        }
        
        cell.tapEye1Completion = {[weak self] in
            guard let self = self else {return}
            let vc = DetailInsuranceViewController()
            vc.index = 1
            vc.modalTransitionStyle = .coverVertical
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: true)
        }
        
        cell.tapEye2Completion = {[weak self] in
            guard let self = self else {return}
            let vc = DetailInsuranceViewController()
            vc.index = 2
            vc.modalTransitionStyle = .coverVertical
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
        
        cell.tapEye3Completion = {[weak self] in
            guard let self = self else {return}
            let vc = DetailInsuranceViewController()
            vc.index = 3
            vc.modalTransitionStyle = .coverVertical
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: true)
        }
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let visibleRect = CGRect(origin: collectionView.contentOffset, size: collectionView.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        let indexPath = collectionView.indexPathForItem(at: visiblePoint)
        
        if let row = indexPath?.row {
            listItemStackView.arrangedSubviews.forEach { elemen in
                if(elemen.tag == row) {
                    for sub in elemen.subviews {
                        if let img = sub as? UIImageView {
                            img.tintColor = UIColor.init(rgb: 0xFF2B65AC)
                        }
                        
                        if let lbl = sub as? UILabel {
                            lbl.textColor = UIColor.init(rgb: 0xFF2B65AC)
                        }
                    }
                } else {
                    for sub in elemen.subviews {
                        
                        if let img = sub as? UIImageView {
                            img.tintColor = .systemGray2
                        }
                        
                        if let lbl = sub as? UILabel {
                            lbl.textColor = .systemGray2
                        }
                    }
                }
            }
        }
    }
    
    
}
