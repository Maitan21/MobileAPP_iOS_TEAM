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
    @IBOutlet weak var profile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 10.0
        backBtn.contentEdgeInsets = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
    }
   

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        profile.text = "이름 : \(ViewController.mUser!.name)\n생년월일 : \(ViewController.mUser!.birthYear)년 \(ViewController.mUser!.birthMonth)월 \(ViewController.mUser!.birthDay)일"
    }

    @IBAction func resetData(_ sender: Any) {
        ViewController.db.deleteByID()
        ViewController.mUser = nil
        tabBarController?.selectedIndex = 0
        
    }
    @IBAction func clickBtn(_ sender : Any)
    {
        tabBarController?.selectedIndex = 0
    }
}
