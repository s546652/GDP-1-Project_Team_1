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
    var errorLogin = false
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
        
//        db = Firestore.firestore()
        print("inside login button")
                
//        db.collection("User").whereField("username", isEqualTo: emailOutlet.text!).getDocuments() { [self] (querySnapshot, err) in
//                if let err = err {
//                    print("Error getting documents: \(err)")
//                } else {
//                    print(555,querySnapshot!.documents.count)
//                    for document in querySnapshot!.documents {
//                        print("query snapshot",querySnapshot!.documents)
//                        print("\(document.documentID) ")
//                     }
//
//                }
//        }
        
        
        
        
        
        
//        Auth.auth().signIn(withEmail: emailOutlet.text!, password: passwordOutlet.text!){Result, error in
//            if error != nil {
//                print(error!.localizedDescription)
//                print("inside auth eror")
//                self.errorLogin = true
//                print("inside auth eror",self.errorLogin)
//            }
//            else {
//                print("logged in")
//                self.wishlitsOutlet.isEnabled = true
//                self.gobalUsername = self.emailOutlet.text!
//                print(self.gobalUsername)
//                //self.performSegue(withIdentifier: "loginSegue", sender: self)
//            }
//        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("shouldPerformSegue -- ",errorLogin)
        
        db = Firestore.firestore()
        
        
        Auth.auth().signIn(withEmail: emailOutlet.text!, password: passwordOutlet.text!){Result, error in
            if error != nil {
                print(error!.localizedDescription)
                print("inside auth eror")
                self.errorLogin = true
                print("inside auth eror",self.errorLogin)
            }
            else {
                print("logged in")
                self.wishlitsOutlet.isEnabled = true
                self.gobalUsername = self.emailOutlet.text!
                print(self.gobalUsername)
                //self.performSegue(withIdentifier: "loginSegue", sender: self)
            }
        }
        print("shouldPerformSegue -- ",errorLogin)
            if identifier == "loginSegue" {
               
                    if errorLogin {
                        print("inside errorlogin")
                        return false
                    } else {
                        print("inside else block of errorlogin")
                        //defaults.setValue(currentUser, forKey: "currentUser")
                        self.performSegue(withIdentifier: "loginSegue", sender: self)
                        
                        return true
                    }
            }
        else if identifier == "wishlistsegue" {
                
                if errorLogin {
                    return false
                } else {
                    //defaults.setValue(currentUser, forKey: "currentUser")
                    
                    self.performSegue(withIdentifier: "wishlistsegue", sender: self)
                    
                    return true
                }
        }
        else {
                return false
            }

        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
            let trans = segue.identifier
                if trans == "wishlistsegue" {
                    let des = segue.destination as! wishListControllerViewController
                    des.username = self.gobalUsername
                    print("wishLsit")
                }
            else if trans == "loginSegue" {
                print(emailOutlet.text!)
                let des = segue.destination as! EventsDetailListViewController
                //print(self.gobalUsername)
                des.gUsername = emailOutlet.text!
                print("^^^^^^^^^^^")
                print(des.gUsername)

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
