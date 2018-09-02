//
//  ContentViewController.swift
//  ELS
//
//  Created by Lê Duy on 9/2/18.
//  Copyright © 2018 Lê Duy. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    var selectedTrait: String = ""
    
    @IBOutlet weak var test: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button(_ sender: UIButton) {
        print(selectedTrait)
    }
    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}


