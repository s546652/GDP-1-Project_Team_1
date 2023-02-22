//
//  LoginController.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 10/1/22.
//

import UIKit
import Firebase
import SwiftUI
import Firebase
import FirebaseFirestore
class LoginController: UIViewController {
    var db: Firestore!
    var gobalUsername:String = ""
    var errorLogin = true
    @IBOutlet weak var wishlitsOutlet: UIBarButtonItem!
    
    @IBOutlet weak var emailOutlet: UITextField!
    
    @IBOutlet weak var passwordOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("test login")
        wishlitsOutlet.isEnabled = false
    }
    
    
    
    @IBAction func loginBTN(_ sender: Any) {
                print("inside login button")
                
        if(!emailOutlet.text!.isEmpty && !passwordOutlet.text!.isEmpty) {
            db = Firestore.firestore()
            
            
            Auth.auth().signIn(withEmail: emailOutlet.text!, password: passwordOutlet.text!){Result, error in
                if error != nil {
                    print(error!.localizedDescription)
                    print("inside auth eror")
                    self.errorLogin = false
                    print("inside auth eror",self.errorLogin)
                }
                else {
                    
                    print("inside auth true")
                    self.wishlitsOutlet.isEnabled = true
                    self.gobalUsername = self.emailOutlet.text!
                    print(self.gobalUsername)
                   
                    if(self.errorLogin){
                        print("inside errorLogin true")
                       // self.performSegue(withIdentifier: "loginSegue", sender: self)
                        
                        
                        
                        self.performSegue(withIdentifier: "calendarDataSegue", sender: self)
                        
                        
                        
                       
                    }
                }
            }
        }
        // Create new Alert
//        var dialogMessage = UIAlertController(title: "Confirm", message: "Are you sure you want to login ?", preferredStyle: .alert)
//
//        // Create OK button with action handler
//        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
//            print("Ok button tapped")
//         })
//
//        //Add OK button to a dialog message
//        dialogMessage.addAction(ok)
//
//        // Present Alert to
//        self.present(dialogMessage, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let trans = segue.identifier
                if trans == "wishlistsegue" {
                    let des = segue.destination as! wishListControllerViewController
                    des.username = self.gobalUsername
                }
//        else if trans == "loginSegue" {
//                let des = segue.destination as! EventsDetailListViewController
//                des.gUsername = emailOutlet.text!
//
//            }
        else if trans == "calendarDataSegue" {
            print("test ---- calendar Datasegue")
                       let des = segue.destination as! EventsListController
                      // des.gUsername = emailOutlet.text!
       
                   }
        else if trans == "userAccountSegue" {
            let des = segue.destination as! UserAccPageViewController
            des.usernames = emailOutlet.text!
            des.password = passwordOutlet.text!
            emailOutlet.text! = ""
            passwordOutlet.text! = ""
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
