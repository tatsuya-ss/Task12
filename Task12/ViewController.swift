//
//  ViewController.swift
//  Task12
//
//  Created by 坂本龍哉 on 2020/10/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var calcButton: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let zei = UserDefaults.standard.string(forKey: "zei"){
            self.textField2.text = zei
        }
    }
 
    @IBAction func calcAction(_ sender: Any) {
        let num1 = Double(textField1.text!) ?? 0
        let num2 = Double(textField2.text!) ?? 0
        let zeiritu = 1 + num2 / 100
       
        UserDefaults.standard.set(textField2.text, forKey: "zei")
        
        resultLabel.text = String(Int(num1 * zeiritu))
    }
}

