//
//  TestTableViewController.swift
//  Chapter01
//
//  Created by 강동영 on 2022/03/30.
//

import UIKit

class TestTableViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var verticalStackView: UIStackView!
    @IBOutlet weak var dateView: UIStackView!
    @IBOutlet weak var periodView: UIStackView!
    
    @IBOutlet weak var couponTableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initLayout()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }

    func initLayout() {
        
        backgroundView.isHidden = false
        verticalStackView.isHidden = false
        dateView.isHidden = false
        periodView.isHidden = true
        
        backgroundView.frame.size.height = dateView.frame.height 
        
    }

    @IBAction func moveBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
