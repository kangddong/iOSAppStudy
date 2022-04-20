//
//  ViewController.swift
//  Chapter01
//
//  Created by 강동영 on 2022/03/21.
//

/*
 화면을 구성하는데 사용되는 세 가지 주요 객체
 UIScreen 기기에 연결되는 물리적인 화면을 정의하는 객체
 UIWindow 화면 그리기 지원 도구를 제공하는 객체
 UIView 그리기를 수행할 객체 세트
 */
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgaeButton: UIButton!
    @IBOutlet weak var firstViewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    override func didReceiveMemoryWarning() {
        print("didReceiveMemoryWarning")
    }

    @IBAction func sayHello(_ sender: UIButton) {
        firstViewLabel.text = "Hello, World!"
    }
    @IBAction func moveNext(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else { return }
        
        self.present(vc, animated: true)
    }
    @IBAction func moveTest(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "TestViewController") else { return }
        
        self.show(vc, sender: nil)
    }
    
    @IBAction func moveTableViewTest(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "TestTableViewController") else { return }
        //vc.modalPresentationStyle = .fullScreen
        //self.present(vc, animated: false)
        self.show(vc, sender: nil)
    }
    
    @IBAction func changeImage(sender: UIButton) {
        print("send Warning")
        UIControl().sendAction(Selector(("_performMemoryWarning")), to: UIApplication.shared, for: nil)
    }
}
