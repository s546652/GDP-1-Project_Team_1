//
//  ViewController.swift
//  AppDemo
//
//  Created by Gagenapally,Roshni Damodar Reddy on 9/21/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    @IBOutlet weak var label: UILabel!
    //import UIKit

    @IBAction func sibmit(_ sender: Any) {
        
        let url = NSURL(string: "http://calendar.nwmissouri.edu")

        let task = URLSession.shared.dataTask(with: (url?.absoluteURL)!){(data,response,error) in
            print(NSString(data:data!, encoding: String.Encoding.utf8.rawValue))
        }

        task.resume()
        print("-------------")
       // label.text = task
        print(task)
    }
    
}




