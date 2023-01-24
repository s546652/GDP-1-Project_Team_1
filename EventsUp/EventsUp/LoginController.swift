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
        Auth.auth().signIn(withEmail: emailOutlet.text!, password: passwordOutlet.text!){Result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
            else {
                print("logged in")
            }
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
