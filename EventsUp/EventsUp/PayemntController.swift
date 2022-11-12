//
//  PayemntController.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 10/25/22.
//

import UIKit


class PayemntController: UIViewController {
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            self.usernameTF.layer.borderColor = UIColor.red.cgColor
            self.usernameTF.layer.borderWidth = 1
            
            self.addressTF.layer.borderColor = UIColor.red.cgColor
            self.addressTF.layer.borderWidth = 1
            
            self.cardNameTF.isEnabled = false
            self.cardNumberTF.isEnabled = false
            self.expiryDateTF.isEnabled = false
            self.ssnTF.isEnabled = false
            self.submit.isEnabled = false
            
            self.cardNumberTF.isEnabled = false
            self.expiryDateTF.isEnabled = false
            self.ssnTF.isEnabled = false
            self.cardNameTF.isEnabled = false
            self.submit.isEnabled = false
            // Do any additional setup after loading the view.
        }
        
    @IBOutlet weak var UsernameLBL: UILabel!
    
    @IBAction func username(_ sender: UITextField) {
        if(self.usernameTF.text != ""){
                    
                }
                
                if let fullName = self.usernameTF.text
                {
                    if let errorMessage = invalidUserName(fullName)
                    {
                        usernameTF.shake()
                        UsernameLBL.text = errorMessage
                    }

                    else{
                        UsernameLBL.isHidden = true
                        self.usernameTF.layer.borderColor = UIColor.green.cgColor
                        self.usernameTF.layer.borderWidth = 1
                    }
                }
    }
    
    func invalidUserName(_ value: String)->String?
    {
        let set = CharacterSet(charactersIn: value)
        if !CharacterSet.letters.isSuperset(of: set){
            return "Name must be only letters"
        }
        
        return nil
    }

  
    @IBAction func address(_ sender: UITextField) {
        if(self.addressTF.text != ""){
            self.addressTF.layer.borderColor = UIColor.green.cgColor
            self.addressTF.layer.borderWidth = 1
        }
    }
    
  
    @IBOutlet weak var cardnumLBL: UILabel!
    
    @IBAction func cardnumber(_ sender: UITextField) {
                
                if let cardNum = self.cardNumberTF.text
                {
                    if let errorMessage = invalidphnNum(cardNum)
                    {
                        cardNumberTF.shake()
                        cardnumLBL.text = errorMessage
                    }

                    else{
                        cardnumLBL.isHidden = true
                        self.cardNumberTF.layer.borderColor = UIColor.green.cgColor
                        self.cardNumberTF.layer.borderWidth = 1
                    }
                }

    }
    
    func invalidphnNum(_ value: String)->String?
    {
        let set = CharacterSet(charactersIn: value)
        if !CharacterSet.decimalDigits.isSuperset(of: set){
            return "Card Numbers must be only digits"
        }
        
        if value.count != 16{
            return "Card Numbers must be 10 digits"
        }
        
        return nil
    }
    
      
        
    @IBAction func expirydate(_ sender: UITextField) {
        self.expiryDateTF.layer.borderColor = UIColor.green.cgColor
        self.expiryDateTF.layer.borderWidth = 1
    }
    
    
    @IBAction func ssn(_ sender: UITextField) {
        self.ssnTF.layer.borderColor = UIColor.green.cgColor
        self.ssnTF.layer.borderWidth = 1
    }
    
    
        
    @IBAction func cardname(_ sender: UITextField) {
        self.cardNameTF.layer.borderColor = UIColor.green.cgColor
        self.cardNameTF.layer.borderWidth = 1
    
    }
    
        
        
    @IBOutlet weak var usernameTF: UITextField!
    
  
    @IBOutlet weak var addressTF: UITextField!
    
    
    @IBOutlet weak var cardNumberTF: UITextField!
    
    
    @IBOutlet weak var expiryDateTF: UITextField!
    
    
    @IBOutlet weak var ssnTF: UITextField!
    
    
    @IBOutlet weak var cardNameTF: UITextField!
    
    
    
        
        
        @IBAction func debitcardBTN(_ sender: UIButton) {
            self.credicard.isEnabled = false
            self.cardNumberTF.isEnabled = true
            self.expiryDateTF.isEnabled = true
            self.ssnTF.isEnabled = true
            self.cardNameTF.isEnabled = true
            self.submit.isEnabled = true
            
            self.cardNumberTF.layer.borderColor = UIColor.red.cgColor
            self.cardNumberTF.layer.borderWidth = 1
            
            self.expiryDateTF.layer.borderColor = UIColor.red.cgColor
            self.expiryDateTF.layer.borderWidth = 1
            
            self.ssnTF.layer.borderColor = UIColor.red.cgColor
            self.ssnTF.layer.borderWidth = 1
            
            self.cardNameTF.layer.borderColor = UIColor.red.cgColor
            self.cardNameTF.layer.borderWidth = 1
        }
        
        
        @IBAction func creditCardBTN(_ sender: UIButton) {
            self.debitcard.isEnabled = false
            self.cardNumberTF.isEnabled = true
            self.expiryDateTF.isEnabled = true
            self.ssnTF.isEnabled = true
            self.cardNameTF.isEnabled = true
            self.submit.isEnabled = true
            
            self.cardNumberTF.layer.borderColor = UIColor.red.cgColor
            self.cardNumberTF.layer.borderWidth = 1
            
            self.expiryDateTF.layer.borderColor = UIColor.red.cgColor
            self.expiryDateTF.layer.borderWidth = 1
            
            self.ssnTF.layer.borderColor = UIColor.red.cgColor
            self.ssnTF.layer.borderWidth = 1
            
            self.cardNameTF.layer.borderColor = UIColor.red.cgColor
            self.cardNameTF.layer.borderWidth = 1
        }
        
        
        @IBAction func submitBTN(_ sender: UIButton) {
                    let mess = "Congratulations "
                    let name = (self.cardNameTF.text)?.capitalized
                    let prnt = mess+name!
                    let alert = UIAlertController(title: prnt, message: "Transaction Successful", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                    self.present(alert, animated: true)

                }
        
        @IBOutlet weak var credicard: UIButton!
        
        @IBOutlet weak var debitcard: UIButton!
        
        @IBOutlet weak var submit: UIButton!
        
        
        
        
        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */


}

extension UITextField {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(animation, forKey: "position")
    }
}
