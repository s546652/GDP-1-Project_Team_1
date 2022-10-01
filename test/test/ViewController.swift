//
//  ViewController.swift
//  test
//
//  Created by Gagenapally,Roshni Damodar Reddy on 9/27/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//}

    let url = NSURL(string: "https://website.com")
    let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
          print(NSString(data: data!, encoding: NSUTF8StringEncoding))
          }
          task!.resume()
         //}
    
}

