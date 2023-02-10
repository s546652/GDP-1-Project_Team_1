//
//  HomeVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view.bounds
//        gradientLayer.colors = [
//            UIColor.systemRed.cgColor,
//            UIColor.systemCyan.cgColor,
//            UIColor.systemTeal.cgColor,
//        ]
//        view.layer.addSublayer(gradientLayer)
        
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.alpha = 0.3
        view.addSubview(backgroundImageView)
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
