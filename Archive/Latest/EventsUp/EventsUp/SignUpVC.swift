//
//  SignUpVC.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 2/22/23.
//

import UIKit
import SwiftUI
import Firebase
import Lottie

class SignUpVC: UIViewController {
    
    var dateString:String!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var fName: UITextField!
    
    
    @IBOutlet weak var lName: UITextField!
    
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var dob: UITextField!
    
    @IBOutlet weak var sid: UITextField!
    
    @IBOutlet weak var phNo: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    
    @IBOutlet weak var re_enterPassword: UITextField!
    
    @objc func datePickerChanged(picker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/YYYY"
        dateString=dateFormatter.string(from: picker.date)
        print(dateString)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
            
            
//            if ConstantsEventsUP.yourVariable == true {
//                self.performSegue(withIdentifier: "logoutSegue", sender: (Any).self)
//            }
        
        
        let date = datePicker
        datePicker.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)
        
        self.fName.layer.borderColor = UIColor.red.cgColor
        self.fName.layer.borderWidth = 1
        self.sid.layer.borderColor = UIColor.red.cgColor
        self.sid.layer.borderWidth = 1
        
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
        
      loadSignUpAnimation()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        super.didRotate(from: fromInterfaceOrientation)
        loadSignUpAnimation()
    }
    let animationView = LottieAnimationView()
    
    func loadSignUpAnimation(){
        
                let animation = LottieAnimation.named("104759-login")
                animationView.animation = animation
                animationView.loopMode = .loop
                animationView.frame = view.bounds
                animationView.alpha = 0.25

                view.layer.addSublayer(animationView.layer)
                animationView.play()
    }
    
    @IBOutlet weak var emailError: UILabel!
    
    var stdtAcc = false
    
    
    
    
    @IBAction func fnameTFA(_ sender: UITextField) {
        if(self.fName.text != ""){
            self.fName.layer.borderColor = UIColor.green.cgColor
            self.fName.layer.borderWidth = 1
        }
    }
    
    @IBAction func fnameCheck(_ sender: Any) {
    }
    
    
    @IBAction func lnameTFA(_ sender: UITextField) {
        if(self.lName.text != ""){
            self.lName.layer.borderColor = UIColor.green.cgColor
            self.lName.layer.borderWidth = 1
        }
    }

    @IBAction func lnameCheck(_ sender: UITextField) {
    }
    
    @IBAction func emailTFA(_ sender: UITextField) {
        if(self.email.text != ""){
            self.email.layer.borderColor = UIColor.green.cgColor
            self.email.layer.borderWidth = 1
        }
    }
    
    
    @IBAction func emailCheck(_ sender: UITextField) {
    }
    
    
 
    @IBAction func phnumTFA(_ sender: UITextField) {
        if(self.phNo.text != ""){
            self.phNo.layer.borderColor = UIColor.green.cgColor
            self.phNo.layer.borderWidth = 1
        }
    }
    
 
    @IBAction func phnumCheck(_ sender: UITextField) {
    }
    
    
    
    
    @IBAction func psswrdTFA(_ sender: UITextField) {
        if(self.password.text != ""){
            self.password.layer.borderColor = UIColor.green.cgColor
            self.password.layer.borderWidth = 1
        }
    }
    
    
    @IBAction func psswrdCheck(_ sender: UITextField) {
    }
    
 
    
    @IBAction func repassTFA(_ sender: UITextField) {
        if(self.re_enterPassword.text != ""){
            self.re_enterPassword.layer.borderColor = UIColor.green.cgColor
            self.re_enterPassword.layer.borderWidth = 1
        }
    }
    
    
    @IBAction func repassCheck(_ sender: UITextField) {
    }
    
    
 
    @IBAction func dobTFA(_ sender: UITextField) {
        if(self.dob.text != ""){
            self.dob.layer.borderColor = UIColor.green.cgColor
            self.dob.layer.borderWidth = 1
        }
    }
    
   
    @IBAction func dobCheck(_ sender: UITextField) {
    }
    
    
    
    @IBAction func sidTFA(_ sender: UITextField) {
        if(self.sid.text != ""){
            self.sid.layer.borderColor = UIColor.green.cgColor
            self.sid.layer.borderWidth = 1
        }
    }
    
    
    @IBAction func sidCheck(_ sender: UITextField) {
    }
    
    
    
    @IBAction func toolTip(_ sender: Any) {
        
    }
    
    @IBAction func Submit(_ sender: Any) {
        if !validation() {
            return
        }
        
        Auth.auth().createUser(withEmail: email.text!, password: password.text!){Result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
            else {
                var a = ["test"]
                print("test $$$$$")
                let db = Firestore.firestore()
                //let db = Firestore.firestore()
                let ref = db.collection("User").document(self.email.text!)
                ref.setData(["fname":self.fName.text!,"lname":self.lName.text!,"username":self.email.text!,"password":self.password.text!,"DOB":self.dateString!,"PhoneNumber":self.phNo.text!]){error in
                    if let error = error {
                        print(error.localizedDescription)
                        
                        
                    }
                    else{
                        print("check")
                        let defaultAction = UIAlertAction(title: "Ok",
                                                style: .default) { (action) in
                            print("test")
                            self.performSegue(withIdentifier: "loginToHome", sender: self)
                           }
//                        let animationView = LottieAnimationView(name: "104368-thank-you")
//                        animationView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//                        animationView.contentMode = .scaleAspectFit
//                        animationView.loopMode = .loop
//                        animationView.play()

                          let alert = UIAlertController(title: "Details",
                                 message: "Signup Successfull",
                                 preferredStyle: .alert)
//                           alert.view.addSubview(animationView)
                           alert.addAction(defaultAction)
                           self.present(alert, animated: true) {
                           }                    }
                }
            }
        }
        // Create new Alert
        
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


extension SignUpVC {
    
    func validation() -> Bool {
        var errorMsg = ""
        var isValidate = true
        let fName = self.fName.text
        let lName = self.lName.text
        let emailStr = self.email.text
        let passStr = self.password.text
        let phoneStr = self.phNo.text
        
        if fName?.isEmpty ?? false{
            errorMsg += "Please enter first name.\n"
            isValidate = false
        }else if fName?.isContainNumeric() ?? false {
            errorMsg += "Number not allow in first name.\n"
            isValidate = false
        }
        if lName?.isEmpty ?? false{
            errorMsg += "Please enter last name.\n"
            isValidate = false
        }else if lName?.isContainNumeric() ?? false {
            errorMsg += "Number not allow in last name.\n"
            isValidate = false
        }
        if emailStr?.isEmpty ?? false{
            errorMsg += "Please enter email.\n"
            isValidate = false
        } else if !(emailStr?.isValidEmail() ?? false){
            errorMsg += "Please enter valid email.\n"
            isValidate = false
        }
        if dateString?.isEmpty ?? false || dateString == nil{
            errorMsg += "Please select date of birth.\n"
            isValidate = false
        }
        if passStr?.isEmpty ?? false{
            errorMsg += "Please enter password.\n"
            isValidate = false
        }else if !(passStr?.isValidPassword() ?? false){
            errorMsg += "Password must be atleast 8 character long.\n"
            isValidate = false
        }
        if phoneStr?.isEmpty ?? false{
            errorMsg += "Please enter phone number.\n"
            isValidate = false
        }else if !(phoneStr?.isValidPhone() ?? false){
            errorMsg += "Phone number must be 10 digit.\n"
            isValidate = false
        }
        if !isValidate {
            var alert = UIAlertController(title: "Alert!", message: errorMsg, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }
        return isValidate
    }
}
