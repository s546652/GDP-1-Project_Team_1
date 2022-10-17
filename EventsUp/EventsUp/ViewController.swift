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
    
   
    
    @IBOutlet weak var tabelView: UITableView!
    
    
    @IBOutlet weak var displayImageOutlet: UIImageView!
    let img = ["img1","img2","img3"]
    
    @IBOutlet weak var preOutlet: UIButton!
    
    @IBOutlet weak var nextOutlet: UIButton!
    
    override func viewDidLoad() {
        print("test view")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImageOutlet.image = UIImage(named: img[imgNum])
        preOutlet.isEnabled = false
        
        tabelView.reloadData()

    }
     
    struct ContentView: View{
        var body: some View{
            Label("Your account",image: "img01")
                    }
    }
    
    @IBAction func preButton(_ sender: Any) {
            imgNum -= 1;
            
            displayImageOutlet.image = UIImage(named: img[imgNum])
            
            
            nextOutlet.isEnabled = true
            
            // if we reach end of the array the next button should be disabled
            
            if(imgNum == 0){
                preOutlet.isEnabled = false
            }
        }
            
        
        @IBAction func nextButton(_ sender: Any) {
            imgNum += 1;
            displayImageOutlet.image = UIImage(named: img[imgNum])
            preOutlet.isEnabled = true
            
            // if we reach end of the array the next button should be disabled
            
            if(imgNum == img.count-1){
                nextOutlet.isEnabled = false
            }
        }
    
    
    
}
