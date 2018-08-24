//
//  ViewController.swift
//  ELS
//
//  Created by Lê Duy on 8/23/18.
//  Copyright © 2018 Lê Duy. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let sectionInsets = UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)
    let realm = try! Realm()
    var Grade : Results<gradeCategory>?
    let itemsPerRow: CGFloat = 1
    let imageArray = [UIImage(named: "grade6"),UIImage(named: "grade7"),UIImage(named: "grade8"),UIImage(named: "grade9"),UIImage(named: "grade10"),UIImage(named: "grade11"),UIImage(named: "grade12")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGrade()
    }
    
}

//MARK: - UIcollention delegate method
extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! gradeCollectionViewCell
        
        cell.image.image = imageArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "gotoUnitSegue", sender: self)
        
        print(indexPath.row)
    }
}

//MARK: - Cell display option
extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        //2
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        let heightPerItem = widthPerItem / 2
        
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

//MARK: - Reaml
extension ViewController {
    func loadGrade() {
        Grade = realm.objects(gradeCategory.self)
    }
    
}


