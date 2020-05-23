//
//  Todaysunse.swift
//  knuunse
//
//  Created by 성진용 on 2020/05/21.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class TodaysUnseViewController : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.left"),for: .normal)
        button.setTitle("메인",for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.addTarget(self,action: #selector(clickBack), for: .touchUpInside)
        button.sizeToFit()

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    }
    
    @objc func clickBack(_ sender:Any)
    {
        tabBarController?.selectedIndex = 0
    }
}
