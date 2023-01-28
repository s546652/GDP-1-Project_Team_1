//
//  LoginVC.swift
//  EventsUpNew
//
//  Created by Gundu,Naveen Kumar on 11/17/22.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupBTN(_ sender: UIButton) {
        self.performSegue(withIdentifier: "logintosignup", sender: self)
    }
    
     
    @IBAction func sigBTN(_ sender: UIButton) {
        self.performSegue(withIdentifier: "logintosignup", sender: self)
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
