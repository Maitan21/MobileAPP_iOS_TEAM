//
//  ViewController.swift
//  mobileProject
//
//  Created by 성진용 on 2020/05/20.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var stackView: [UIStackView]!
    
    static var db = DBHelper()
    
    static var mUser : User? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in stackView{
        i.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(clickButton(_:))))
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if ViewController.mUser == nil {
            loadUserData()
        }
    }
    
    func loadUserData(){
        let data = ViewController.db.read()
        if data == nil {
            let vc = storyboard?.instantiateViewController(withIdentifier: "createID") as! CreateIdViewController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
            
        }else {
            ViewController.mUser = data
        }
    }

    @objc func clickButton(_ sender: Any) {
        let id = (sender as? UITapGestureRecognizer)?.view?.restorationIdentifier
        if id == "별자리 운세"
        {
            tabBarController?.selectedIndex = 1
        }else if id == "오늘의 운세"
        {
            tabBarController?.selectedIndex = 2
        }else if id == "관상" {
            tabBarController?.selectedIndex = 3
        }else{
            tabBarController?.selectedIndex = 4
        }
    }  
}

