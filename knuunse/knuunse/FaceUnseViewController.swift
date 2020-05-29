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
    
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        backBtn.layer.cornerRadius = 10.0
        backBtn.contentEdgeInsets = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
    
        
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
        
    func webView(_ WebView2: WKWebView, didFinish navigation: WKNavigation!) {
           // hide/stop indicator
           indicator.stopAnimating()
    }

    
    @IBAction func clickBtn(_ sender : Any)
    {
        tabBarController?.selectedIndex = 0
    }

}
