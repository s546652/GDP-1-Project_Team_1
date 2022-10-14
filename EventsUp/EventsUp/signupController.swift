//
//  signupControllerViewController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 10/10/22.
//

import UIKit

class signupControllerViewController: UIViewController {
    
    
    
    @IBOutlet weak var fName: UITextField!
    
    
    @IBOutlet weak var lName: UITextField!
    
    
    @IBOutlet weak var email: UITextField!

    
    @IBOutlet weak var phNo: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    
    @IBOutlet weak var re_enterPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var emailError: UILabel!
    
    var stdtAcc = false
    @IBAction func Submit(_ sender: Any) {
        
        if(fName.text!.isEmpty == false && lName.text!.isEmpty == false){
            // field in attended entity to store value in first name and last name
            if(email.text!.isEmpty == false){
                if(email.text!.hasSuffix("@nwmissouri.edu")){
                    stdtAcc = true
                    //store in email field
                }
                else if(email.text!.contains("@") && email.text!.contains(".")){
                    //field in db to store data from email
                }
                else{
                    emailError.text! = "Please enter correct email"
                }
            }
            if(phNo.text!.isEmpty == false){
                var phno:Int
              //  phno = (Int)phNo.text!
            }
        }
        
    }
    
    

}
