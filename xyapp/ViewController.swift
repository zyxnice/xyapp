//
//  ViewController.swift
//  xyapp
//
//  Created by zyxnice on 15/6/20.
//  Copyright (c) 2015年 hj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webview:UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.scrollView.bounces = false
        loadUrl("http://www.xyeach.com:5535")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadUrl(url:String)
    {
        var urlobj = NSURL(string:url)
        
        var request = NSURLRequest(URL:urlobj!)
        
        webview.loadRequest(request);
    }


}

