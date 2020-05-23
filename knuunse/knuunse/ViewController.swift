//
//  ViewController.swift
//  mobileProject
//
//  Created by 성진용 on 2020/05/20.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func clickButton(_ sender: Any) {
        if (sender as? UIButton)?.currentTitle == "별자리 운세"
        {
            tabBarController?.selectedIndex = 1
        }else if (sender as? UIButton)?.currentTitle == "오늘의 운세"
        {
            tabBarController?.selectedIndex = 2
        }else{
            tabBarController?.selectedIndex = 3
        }
    }  
}

