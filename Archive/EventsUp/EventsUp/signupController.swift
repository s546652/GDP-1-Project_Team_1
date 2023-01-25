//
//  signupControllerViewController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 10/10/22.
//

import UIKit
import SQLite3
import SwiftUI
import MySQLDriver
import Firebase



class signupControllerViewController: UIViewController {
    
    
    let sqlite_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
    @IBOutlet weak var fName: UITextField!
    
    
    @IBOutlet weak var lName: UITextField!
    
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var dob: UITextField!
    
    @IBOutlet weak var sid: UITextField!
    
    @IBOutlet weak var phNo: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    
    @IBOutlet weak var re_enterPassword: UITextField!
    
    override func viewDidLoad() {
        print("akjbvak")
        super.viewDidLoad()
        
        self.fName.layer.borderColor = UIColor.red.cgColor
        self.fName.layer.borderWidth = 1
        
        self.lName.layer.borderColor = UIColor.red.cgColor
        self.lName.layer.borderWidth = 1
        self.dob.layer.borderColor = UIColor.red.cgColor
        self.dob.layer.borderWidth = 1
        
        self.email.layer.borderColor = UIColor.red.cgColor
        self.email.layer.borderWidth = 1
        self.phNo.layer.borderColor = UIColor.red.cgColor
        self.phNo.layer.borderWidth = 1
        
        self.password.layer.borderColor = UIColor.red.cgColor
        self.password.layer.borderWidth = 1
        self.re_enterPassword.layer.borderColor = UIColor.red.cgColor
        self.re_enterPassword.layer.borderWidth = 1
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Test(_ sender: UIButton) {
        print("testttt")
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
    
    
    @IBAction func fnameTF(_ sender: UITextField) {
        if(self.fName.text != ""){
            self.fName.layer.borderColor = UIColor.green.cgColor
            self.fName.layer.borderWidth = 1
        }
    }
    
    
    @IBAction func lnameTF(_ sender: UITextField) {
        if(self.lName.text != ""){
            self.lName.layer.borderColor = UIColor.green.cgColor
            self.lName.layer.borderWidth = 1
        }
    }
    
    
    
    @IBAction func emailTF(_ sender: UITextField) {
        if(self.email.text != ""){
            self.email.layer.borderColor = UIColor.green.cgColor
            self.email.layer.borderWidth = 1
        }
    }
    
    
    
    @IBAction func phnumTF(_ sender: UITextField) {
        if(self.phNo.text != ""){
            self.phNo.layer.borderColor = UIColor.green.cgColor
            self.phNo.layer.borderWidth = 1
        }
    }
    
    
    
    @IBAction func psswrdTF(_ sender: UITextField) {
        if(self.password.text != ""){
            self.password.layer.borderColor = UIColor.green.cgColor
            self.password.layer.borderWidth = 1
        }
    }
    
    
    @IBAction func repassTF(_ sender: UITextField) {
        if(self.re_enterPassword.text != ""){
            self.re_enterPassword.layer.borderColor = UIColor.green.cgColor
            self.re_enterPassword.layer.borderWidth = 1
        }
    }
    
    
    
    @IBAction func dobTF(_ sender: UITextField) {
        if(self.dob.text != ""){
            self.dob.layer.borderColor = UIColor.green.cgColor
            self.dob.layer.borderWidth = 1
        }
    }
    
    
    
    
    
    
    @IBAction func toolTip(_ sender: Any) {
        
    }
    
    @IBAction func Submit(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: email.text!, password: password.text!){Result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
}
