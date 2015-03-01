//
//  ViewController.swift
//  05 Web
//
//  Created by Yan Jin on 2/28/15.
//  Copyright (c) 2015 Yan Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showWeb: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "http://m.facebook.com")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.showWeb.loadHTMLString(urlContent, baseURL:nil)
            })
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

