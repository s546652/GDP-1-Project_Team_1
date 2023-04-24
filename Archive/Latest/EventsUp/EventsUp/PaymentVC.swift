//
//  PaymentVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/21/23.
//

import UIKit
import Lottie
import Firebase
import FirebaseFirestore


class PaymentVC: UIViewController {

    
    
    
    @IBOutlet weak var fNameTF: UITextField!
    
    
    @IBOutlet weak var addressTF: UITextField!
    
    
    
    @IBOutlet weak var cardNumTF: UITextField!
    
    
    
    @IBOutlet weak var expiryDateTF: UITextField!
    
    
    @IBOutlet weak var secNumTF: UITextField!
    
    
    
    @IBOutlet weak var nameOnCardTF: UITextField!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var db: Firestore!
        db = Firestore.firestore()
        if Auth.auth().currentUser == nil {
            
            
            
         //   if ConstantsEventsUP.yourVariable == true {
                self.performSegue(withIdentifier: "paymentLogout", sender: (Any).self)
         //   }
        }
        
       loadPaymentAnimation()
        
        
        self.fNameTF.layer.borderColor = UIColor.darkText.cgColor
        self.fNameTF.layer.borderWidth = 1
        self.addressTF.layer.borderColor = UIColor.darkText.cgColor
        self.addressTF.layer.borderWidth = 1
        self.cardNumTF.layer.borderColor = UIColor.darkText.cgColor
        self.cardNumTF.layer.borderWidth = 1
        self.expiryDateTF.layer.borderColor = UIColor.darkText.cgColor
        self.expiryDateTF.layer.borderWidth = 1
        self.secNumTF.layer.borderColor = UIColor.darkText.cgColor
        self.secNumTF.layer.borderWidth = 1
        self.nameOnCardTF.layer.borderColor = UIColor.darkText.cgColor
        self.nameOnCardTF.layer.borderWidth = 1
        // Do any additional setup after loading the view.
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        super.didRotate(from: fromInterfaceOrientation)
        loadPaymentAnimation()
    }
    
    let animationView = LottieAnimationView()
    func loadPaymentAnimation(){
        
                let animation = LottieAnimation.named("31737-savings-dollar")
                animationView.animation = animation
                animationView.loopMode = .loop
                animationView.frame = view.bounds
        animationView.alpha = 0.5

                view.layer.addSublayer(animationView.layer)
                animationView.play()
    }
    

    @IBAction func PaypalBTN(_ sender: UIButton) {
        if let url = URL(string: "https://paypal.me/Naveen296") {
                     UIApplication.shared.open(url)
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
