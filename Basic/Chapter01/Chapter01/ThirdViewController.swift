//
//  ThirdViewController.swift
//  Chapter01
//
//  Created by 강동영 on 2022/04/20.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func moveback(_ sender: UIButton!) {
        //self.dismiss(animated: true)
        self.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }

}
