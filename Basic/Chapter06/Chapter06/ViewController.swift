//
//  ViewController.swift
//  Chapter06
//
//  Created by 강동영 on 2022/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func showAlert(_ sender: UIButton) {
        
        let title = "알림"
        let message = "UIAlertController Sample"
        let preferredStyle: UIAlertController.Style = .actionSheet
        
        
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default)
        let exec = UIAlertAction(title: "실행", style: .default)
        let stop = UIAlertAction(title: "중지", style: .destructive)
            
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "암호"
            tf.isSecureTextEntry = true
        })
        
        self.present(alert, animated: true)
    }
}

