//
//  SettingProfileViewController.swift
//  knuunse
//
//  Created by 조윤상 on 2020/06/13.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class SettingProfileViewController: UIViewController {


    @IBOutlet weak var profile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //모서리 처리
        profile.layer.cornerRadius = 5
        profile.layer.masksToBounds = true
        
        // 투명도
        self.profile.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        profile.text = "  이름 : \(ViewController.mUser!.name)\n\n  생년월일 : \(ViewController.mUser!.birthYear)년 \(ViewController.mUser!.birthMonth)월 \(ViewController.mUser!.birthDay)일"
    }

    @IBAction func resetData(_ sender: Any) {
        ViewController.db.deleteByID()
        ViewController.mUser = nil
        tabBarController?.selectedIndex = 0
        
    }
}
