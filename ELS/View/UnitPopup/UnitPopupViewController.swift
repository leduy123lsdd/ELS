//
//  UnitPopupViewController.swift
//  ELS
//
//  Created by Lê Duy on 8/31/18.
//  Copyright © 2018 Lê Duy. All rights reserved.
//

import UIKit

class UnitPopupViewController: UIViewController {

    
    var currentlyTrait: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let a = segue.destination as! ContentViewController
        a.selectedTrait = currentlyTrait
    }
    
    @IBAction func X_Button(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func VocaburalyButton(_ sender: UIButton) {
        
        currentlyTrait = (sender.titleLabel?.text!)!
        performSegue(withIdentifier: "Content", sender: self)
    }
    
    @IBAction func GrammarButton(_ sender: UIButton) {
        currentlyTrait = (sender.titleLabel?.text!)!
        performSegue(withIdentifier: "Content", sender: self)
    }
    
    @IBAction func PronounciationButton(_ sender: UIButton) {
        currentlyTrait = (sender.titleLabel?.text!)!
        performSegue(withIdentifier: "Content", sender: self)    }
    
    @IBAction func PracticeButton(_ sender: UIButton) {
        currentlyTrait = (sender.titleLabel?.text!)!
        performSegue(withIdentifier: "Content", sender: self)    }
    
    
    
    
}





