//
//  layoutDesig.swift
//  ELS
//
//  Created by Lê Duy on 8/26/18.
//  Copyright © 2018 Lê Duy. All rights reserved.
//

import Foundation
import UIKit

class layoutDesig: UIViewController,UICollectionViewLayout {
    let sectionInsets : UIEdgeInsets
    let itemsPerRow: CGFloat
    init() {
        self.sectionInsets = UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)
        self.itemsPerRow = 1
    }
}

