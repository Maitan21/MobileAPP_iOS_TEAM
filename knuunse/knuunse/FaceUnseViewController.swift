//
//  FaceUnseViewController.swift
//  knuunse
//
//  Created by 성진용 on 2020/05/21.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit
import WebKit

class FaceUnseViewController : UIViewController, WKNavigationDelegate{
    @IBOutlet weak var WebView: WKWebView!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.left"),for: .normal)
        button.setTitle("메인",for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.addTarget(self,action: #selector(clickBack), for: .touchUpInside)
        button.sizeToFit()
        

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        
            // Do any additional setup after loading the view.
             WebView.load(URLRequest(url: URL(string: "https://yoonsang2.github.io/MobileAPP_iOS_TEAM/")!))
                    
            self.WebView.navigationDelegate = self
            //        refresh
            let refreshControl = UIRefreshControl()
            refreshControl.addTarget(self, action: #selector(refreshWebView(_:)), for: UIControl.Event.valueChanged)
            WebView.scrollView.addSubview(refreshControl)
            WebView.scrollView.bounces = true


    }
   
    
    @objc func refreshWebView(_ sender: UIRefreshControl){
               WebView?.reload()
               sender.endRefreshing()
           }
    
   @objc func clickBack(_ sender:Any)
   {
       tabBarController?.selectedIndex = 0
   }
    
    func webView(_ WebView2: WKWebView, didFinish navigation: WKNavigation!) {
           // hide/stop indicator
           
           indicator.isHidden = true
           indicator.stopAnimating()
       }
}
