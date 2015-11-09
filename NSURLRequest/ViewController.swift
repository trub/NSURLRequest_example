//
//  ViewController.swift
//  NSURLRequest
//
//  Created by Matthew Weintrub on 11/9/15.
//  Copyright © 2015 matthew weintrub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        guard let googleURL = NSURL(string:"https://www.google.com") else {return }
        //code below only exectures if guard let success
        NSURLSession.sharedSession().dataTaskWithURL(googleURL) { (data, response, error) -> Void in
            print(response)
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

