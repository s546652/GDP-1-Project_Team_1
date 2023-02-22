//
//  PaymentVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/21/23.
//

import UIKit
import Lottie

class PaymentVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let animationView = LottieAnimationView()
                let animation = LottieAnimation.named("31737-savings-dollar")
                animationView.animation = animation
                animationView.loopMode = .loop
                animationView.frame = view.bounds
        animationView.alpha = 0.7

                view.layer.addSublayer(animationView.layer)
                animationView.play()
        // Do any additional setup after loading the view.
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
