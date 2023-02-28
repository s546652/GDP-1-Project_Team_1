//
//  AdminVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/27/23.
//

import UIKit
import Lottie

class AdminVC: UIViewController {

    
    @IBOutlet weak var LoginIV: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

                let animationView = LottieAnimationView()
                LoginIV.addSubview(animationView)

                let animation = LottieAnimation.named("login")
                animationView.animation = animation
                animationView.loopMode = .loop
                animationView.frame = CGRect(x: 50, y: 120, width: 300, height: 300)
               // animationView.center = view.center

        view.layer.addSublayer(animationView.layer)
        animationView.play()
        // Do any additional setup after loading the view.
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
