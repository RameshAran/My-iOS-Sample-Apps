//
//  ViewController.swift
//  HTMLVideoSample
//
//  Created by Ramesh Chandran A on 15/03/17.
//  Copyright © 2017 smartapps. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let path = Bundle.main.path(forResource: "Video_Sample", ofType: "html") {
            webView.load(URLRequest(url : URL(fileURLWithPath: path)))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

