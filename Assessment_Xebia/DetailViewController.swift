    //
    //  DetailViewController.swift
    //  Assessment_Xebia
    //
    //  Created by xeadmin on 25/07/19.
    //  Copyright © 2019 Vinay Sharma. All rights reserved.
    //
    
    import Foundation
    import UIKit
    import WebKit
    
    class DetailViewController: UIViewController,WKUIDelegate {
        @IBOutlet var webView: WKWebView!
        var webLink : String!
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.loadViewLink()
        }
        
        func loadViewLink()
        {
            let myURL = URL(string:webLink)
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    }
    
