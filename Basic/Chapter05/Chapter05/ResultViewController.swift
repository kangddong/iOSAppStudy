//
//  ResultViewController.swift
//  Chapter05
//
//  Created by 강동영 on 2022/04/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultEmail: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultInterval: UILabel!
    
    var paramEmail: String = ""
    var paramUpdate: Bool = false
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultEmail.text = paramEmail
        resultUpdate.text = paramUpdate == true ? "자동갱신" : "자동갱신안함"
        resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
    

    @IBAction func onBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
