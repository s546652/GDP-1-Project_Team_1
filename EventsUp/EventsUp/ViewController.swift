//
//  ViewController.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 9/30/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
     
    var imgNum = 0
    
    @IBOutlet weak var displayImageOutlet: UIImageView!
    let img = ["img1","img2","img3"]
    
    @IBOutlet weak var preOutlet: UIButton!
    
    @IBOutlet weak var nextOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImageOutlet.image = UIImage(named: img[imgNum])
        preOutlet.isEnabled = false

    }
     
    
}

