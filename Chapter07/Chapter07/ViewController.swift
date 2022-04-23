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


}

