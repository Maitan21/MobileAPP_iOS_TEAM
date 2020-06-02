//
//  SettingProfileViewController.swift
//  knuunse
//
//  Created by 성진용 on 2020/05/28.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class SettingProfileViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 10.0
        backBtn.contentEdgeInsets = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
    }

    @IBAction func clickBtn(_ sender : Any)
    {
        tabBarController?.selectedIndex = 0
    }
}
