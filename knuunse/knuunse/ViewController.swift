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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in stackView{
        i.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(clickButton(_:))))
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

