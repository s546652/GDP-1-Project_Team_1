//
//  ViewController.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 9/30/22.
//
import UIKit
import SwiftUI
import MySQLDriver



class ViewController: UIViewController {
     
    var imgNum = 0
    var data:d!
   
    
  //  @IBOutlet weak var tabelView: UITableView!
    
    
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
        connectionTest()
       // tabelView.reloadData()

    }
     
    struct ContentView: View{
        var body: some View{
            Label("Your account",image: "img01")
                    }
    }
    
    @IBOutlet weak var tableView: UITableView!
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
    
    
    @IBAction func eventListButton(_ sender: UIBarButtonItem) {
        print("test")
        callAPI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var tran = segue.identifier
        if tran == "eventsDetails"{
            var destination = segue.destination as! EventsDetailListViewController
            destination.testdata = "testing data"
            
        }
    }
    
    
}


extension ViewController{
    
    func connectionTest(){
        let con = MySQL.Connection()
        //let db_name = "database-4"
        let db_name = "EventsUp"
        
        do{
          // open a new connection
            try
                
            con.open("database-1.ckgk7kfbawvv.us-east-2.rds.amazonaws.com", user: "admin", passwd: "admin123")
            print("Connection is succesfull")
                
            
      }
     catch (let e) {
         print("Error Message")
          print(e)
    }
            
    }
}
