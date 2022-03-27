//
//  SecondViewController.swift
//  Chapter01
//
//  Created by 강동영 on 2022/03/27.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func moveBack(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
//        self.dismiss(animated: true)
    }

}
