//
//  ViewController.swift
//  Chapter07
//
//  Created by 강동영 on 2022/04/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .black
        initTFLayout()
    }
    
    func initTFLayout() {
        tf.delegate = self
        tf.placeholder = "값을 입력하세요"
        tf.keyboardType = .alphabet
        tf.keyboardAppearance = .dark
        tf.returnKeyType = .join
        tf.enablesReturnKeyAutomatically = true
    }

    @IBAction func btn(_ sender: UIButton) {
        if tf.isFocused {
            print("isFocus true")
        } else {
            print("isFocus true")
        }
        if tf.isFirstResponder {
            print("isFirstResponder true")
        } else {
            print("isFirstResponder false")
        }
        tf.resignFirstResponder()
        
    }
    
}

