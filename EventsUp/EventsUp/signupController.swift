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
        
        if(fName.text!.isEmpty || lName.text!.isEmpty || email.text!.isEmpty || dob.text!.isEmpty || phNo.text!.isEmpty || password.text!.isEmpty || re_enterPassword.text!.isEmpty){
            if(fName.text!.isEmpty){
                fName.shake()
            }
            if(lName.text!.isEmpty){
                lName.shake()
            }
            if(email.text!.isEmpty){
                email.shake()
            }
            if(dob.text!.isEmpty){
                dob.shake()
            }
            if(phNo.text!.isEmpty){
                phNo.shake()
            }
            if(password.text!.isEmpty){
                password.shake()
            }
            if(re_enterPassword.text!.isEmpty){
                re_enterPassword.shake()
            }
            
            
        }
        
        
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
            var studentid:String!
            if(sid.text!.isEmpty == false){
                studentid = sid.text
            }
            let con = MySQL.Connection()
            let db_name = "EventsUp"
            
            do{
                // open a new connection
                try
                con.open("localhost", user: "root", passwd: "Skr@329532")
                print("Connection is succesfull")
                try con.use("EventsUp")
                let ins_stmt = try con.prepare("INSERT INTO ATTENDEE(Password, SID, LName, FName,EmailId,PhoneNumber,DOB) VALUES(?,?,?,?,?,?,?)")
                try ins_stmt.exec([password.text!,"s546652", lName.text!, fName.text!, email.text!, phNo.text!, dob.text!])
            }
            catch (let e) {
                print("Error Message")
                print(e)
            }
            
            
            //             var insert = "INSERT INTO E_ATTENDEES (Attendee_Id,Password,Name,FName,EmailId,PhoneNUmber,DOB) VALUES (002,?, ?, ?, ?, ?, ?);"
            //             var insertStat : OpaquePointer?
            //             print("insert 1")
            //             if(sqlite3_prepare_v2(dbQueue, insert, -1, &insertStat, nil)) == SQLITE_OK {
            //                 sqlite3_bind_text(insertStat, 1, password.text ?? "", -1,sqlite_TRANSIENT)
            //                 sqlite3_bind_text(insertStat, 2, lName.text ?? "", -1,sqlite_TRANSIENT)
            //                 sqlite3_bind_text(insertStat, 3, fName.text ?? "", -1,sqlite_TRANSIENT)
            //                 sqlite3_bind_text(insertStat, 4, email.text ?? "", -1,sqlite_TRANSIENT)
            //                 sqlite3_bind_text(insertStat, 5, phNo.text ?? "", -1,sqlite_TRANSIENT)
            //                 sqlite3_bind_text(insertStat, 6, dob.text ?? "", -1,sqlite_TRANSIENT)
            //                 print("insert2")
            
            //                 if(sqlite3_step(insertStat)) == SQLITE_DONE{
            
            //                     lName.text = "testing Roshni"
            
            //                     lName.becomeFirstResponder()
            //                     print("Success")
            
            //                 }
            //                 else{
            //                     print("error in data to table")
            //                 }
            
            
            //                 sqlite3_finalize(insertStat)
            //             }
            
            
            //             let selectStatementString = "SELECT Attendee_Id,Password,Name,FName,EmailId,PhoneNUmber,DOB FROM E_ATTENDEES"
            
            //             let tablecount = "SELECT COUNT FROM E_ATTENDEES"
            
            //             var selectStatemetnQuery :  OpaquePointer?
            
            //             var sShowData = ""
            
            //            if sqlite3_prepare_v2(dbQueue, selectStatementString, -1, &selectStatemetnQuery, nil) == SQLITE_OK
            //             {
            //                 while sqlite3_step(selectStatemetnQuery) == SQLITE_ROW {
            
            //                     sShowData += String(cString: sqlite3_column_text(selectStatemetnQuery, 0)) + "\t\t" +
            //                                  String(cString: sqlite3_column_text(selectStatemetnQuery, 1)) + "\t\t" +
            //                                  String(cString: sqlite3_column_text(selectStatemetnQuery, 2)) + "\t\t" +
            //                                 String(cString: sqlite3_column_text(selectStatemetnQuery, 3)) + "\t\t" +
            //                                 String(cString: sqlite3_column_text(selectStatemetnQuery, 4)) + "\t\t" +
            //                                 String(cString: sqlite3_column_text(selectStatemetnQuery, 5)) + "\n"
            //                     }
            
            //              //  sShowData += String(cString: sqlit)
            
            //                 sqlite3_finalize(selectStatemetnQuery)
            //             }
            //             print("selecting data")
            //             print(sShowData)
            
            //         }
            //         else{
            //             print("enter fname and lname")
            //         }
            
        }
        
    }
    
}
