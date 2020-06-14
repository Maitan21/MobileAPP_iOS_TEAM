//
//  Astralunse.swift
//  knuunse
//
//  Created by 성진용 on 2020/05/21.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class AstralUnseViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var myUnseBtn: UIButton!
    @IBOutlet weak var ContentView: UIView!
    @IBOutlet weak var myAstralUnseView: UIView!
    
    @IBOutlet weak var AstralTableView: UITableView!
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myUnseBtn.layer.cornerRadius = 20.0
        
        self.AstralTableView.layer.cornerRadius = 20.0
        self.myAstralUnseView.layer.cornerRadius = 20.0
        
        ContentView.layer.cornerRadius = 20.0
        AstralTableView.delegate = self
        AstralTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.unse.astralUnse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for: indexPath
        )
        
        let currentRowOfList = ViewController.unse.astralUnse[indexPath.row]
        
        cell.textLabel?.text = currentRowOfList["astralName"]
        cell.detailTextLabel?.text = currentRowOfList["astralString"]
        cell.imageView?.image = UIImage(named: currentRowOfList["astralImage"]!)
       
        cell.selectionStyle = .none
        
        return cell
         
    }
    
    @IBAction func clickView(_ sender : Any)
    {
        if myAstralUnseView.isHidden {
            myUnseBtn.setTitle("모든 운세 보기", for: .normal)
        }else
        {
            myUnseBtn.setTitle("내 운세만 보기", for: .normal)
        }
        myAstralUnseView.isHidden = !myAstralUnseView.isHidden
    }
    
    @IBAction func clickBtn(_ sender : Any)
    {
        tabBarController?.selectedIndex = 0
    }

}
