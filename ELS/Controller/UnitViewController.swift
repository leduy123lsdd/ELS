//
//  UnitViewController.swift
//  ELS
//
//  Created by Lê Duy on 8/24/18.
//  Copyright © 2018 Lê Duy. All rights reserved.
//

import UIKit
import RealmSwift

class UnitViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let sectionInsets = UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)
    let itemsPerRow: CGFloat = 1    // so cot

    var gradeDidSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "UnitCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        
        self.title = "GRADE \(gradeDidSelected)"
    }
    
}

extension UnitViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! UnitCollectionViewCell
        cell.image.image = UIImage(named: "number1")
        cell.label.text = " two ways to get two ways to get two ways to get two ways to get "
         //  reduced in order to fit the title string into the label’s bounding rectangle.
        
        return cell
    }
    
}

//MARK: - Cell display option
extension UnitViewController : UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        //2
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        let heightPerItem = widthPerItem / 4
        return CGSize(width: widthPerItem, height: heightPerItem)
    }
    
    //3
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    // 4
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
