//
//  FaceUnseViewController.swift
//  knuunse
//
//  Created by 성진용 on 2020/05/21.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class FaceUnseViewController : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func clickBtn(_ sender : Any)
    {
        tabBarController?.selectedIndex = 0
    }

}
