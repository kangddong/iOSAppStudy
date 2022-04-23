//
//  ViewController.swift
//  Chapter05
//
//  Created by 강동영 on 2022/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var isUpdate: UISwitch!
    @IBOutlet weak var isUpdateText: UILabel!
    @IBOutlet weak var interval: UIStepper!
    @IBOutlet weak var intervalText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSwitch(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            self.isUpdateText.text = "갱신함"
        case false:
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        
        intervalText.text = "\(value)분 마다"
    }
    
    @IBAction func onSubmit(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else { return }
        vc.paramEmail = email.text!
        vc.paramUpdate = isUpdate.isOn
        vc.paramInterval = interval.stepValue
        
        self.present(vc, animated: true, completion: nil)
    }
    
}

