//
//  LoginController.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 10/1/22.
//

import UIKit
import Firebase
class LoginController: UIViewController {

    @IBOutlet weak var emailOutlet: UITextField!
    
    @IBOutlet weak var passwordOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("test login")
    }
    
    
    @IBAction func loginBTN(_ sender: Any) {
//        if(!emailOutlet.text!.isEmpty && !passwordOutlet.text!.isEmpty) {
//            db = Firestore.firestore()
//
//
//            Auth.auth().signIn(withEmail: emailOutlet.text!, password: passwordOutlet.text!){Result, error in
//                if error != nil {
//                    print(error!.localizedDescription)
//                    print("inside auth eror")
//                    self.errorLogin = false
//                    print("inside auth eror",self.errorLogin)
//                }
//                else {
//                    print("inside auth true")
//                    self.wishlitsOutlet.isEnabled = true
//                    self.gobalUsername = self.emailOutlet.text!
//                    print(self.gobalUsername)
//                    if(self.errorLogin){
//                        print("inside errorLogin true")
//                        self.performSegue(withIdentifier: "loginSegue", sender: self)
//                    }
//                }
//            }
//        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            let trans = segue.identifier
//                if trans == "wishlistsegue" {
//                    let des = segue.destination as! wishListControllerViewController
//                    des.username = self.gobalUsername
//                }
//        else if trans == "loginSegue" {
//                let des = segue.destination as! EventsDetailListViewController
//                des.gUsername = emailOutlet.text!
//
//            }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
