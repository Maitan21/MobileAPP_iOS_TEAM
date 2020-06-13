//
//  GitPage.swift
//  knuunse
//
//  Created by Jho on 2020/06/13.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit
import WebKit

class GitPage: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var WebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        WebView.load(URLRequest(url: URL(string: "https://github.com/YoonSang2/MobileAPP_iOS_TEAM")!))
                     
             self.WebView.navigationDelegate = self
             //        refresh
             let refreshControl = UIRefreshControl()
             refreshControl.addTarget(self, action: #selector(refreshWebView(_:)), for: UIControl.Event.valueChanged)
             WebView.scrollView.addSubview(refreshControl)
             WebView.scrollView.bounces = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @objc func refreshWebView(_ sender: UIRefreshControl){
               WebView?.reload()
               sender.endRefreshing()
    }

}
