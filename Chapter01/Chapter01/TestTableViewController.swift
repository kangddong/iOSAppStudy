//
//  TestTableViewController.swift
//  Chapter01
//
//  Created by 강동영 on 2022/03/30.
//

import UIKit

class TestTableViewController: UIViewController {

    @IBOutlet weak var
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func moveBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
