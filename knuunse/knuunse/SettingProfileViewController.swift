//
//  SettingProfileViewController.swift
//  knuunse
//
//  Created by Jho YoonSang on 2020/06/13.
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
    // alert 객체 생성
    let alert = UIAlertController(title: "Reset", message: "사용자정보를 초기화합니다.", preferredStyle: UIAlertController.Style.alert)
    //ok action
    let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
        ViewController.db.deleteByID()
           
           ViewController.mUser = nil
        self.tabBarController?.selectedIndex = 0
    }
    let cancle = UIAlertAction(title: "Cancle", style: .destructive) { (action) in}
    
    alert.addAction(okAction) //alert add OkAction
    alert.addAction(cancle) //alert add CancleAction
    present(alert, animated: false, completion: nil)
 }
}
