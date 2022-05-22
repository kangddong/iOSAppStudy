//
//  TestViewController.swift
//  Chapter01
//
//  Created by 강동영 on 2022/03/29.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var topview: UIView!
    @IBOutlet weak var bottmoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topview.isHidden = true
        topview.alpha = 0
        bottmoView.isHidden = false
        bottmoView.alpha = 1

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
