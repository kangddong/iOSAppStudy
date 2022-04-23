//
//  FirstViewController.swift
//  Chapter05
//
//  Created by 강동영 on 2022/04/23.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onMove(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else { return }
        self.present(vc, animated: true, completion: nil)
    }

}
