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
    
    @IBAction func moveThird(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") else { return }
        
        self.present(vc, animated: true)
    }

    @IBAction func moveBack(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
        //self.dismiss(animated: true)
    }

}
