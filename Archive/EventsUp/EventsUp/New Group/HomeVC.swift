//
//  HomeVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//

import UIKit

class HomeVC: UIViewController {

    var scrollView: UIScrollView!
        var images: [UIImageView]!
        var currentIndex = 0
        var timer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        
              // Create an array of UIImageView objects
              let image1 = UIImageView(image: UIImage(named: "img1"))
              let image2 = UIImageView(image: UIImage(named: "img2"))
              let image3 = UIImageView(image: UIImage(named: "img3"))
              images = [image1, image2, image3]
              
              // Create a UIScrollView and add the images to it
              scrollView = UIScrollView(frame: view.bounds)
              scrollView.isPagingEnabled = true
              scrollView.showsHorizontalScrollIndicator = false
              scrollView.contentSize = CGSize(width: view.bounds.width * CGFloat(images.count), height: view.bounds.height)
              view.addSubview(scrollView)
              
              for i in 0..<images.count {
                  images[i].frame = CGRect(x: view.bounds.width * CGFloat(i), y: 0, width: view.bounds.width, height: view.bounds.height)
                  scrollView.addSubview(images[i])
              }
              
              // Start the autoscroll
              startTimer()

//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view.bounds
//        gradientLayer.colors = [
//            UIColor.systemRed.cgColor,
//            UIColor.systemCyan.cgColor,
//            UIColor.systemTeal.cgColor,
//        ]
//        view.layer.addSublayer(gradientLayer)
//
//        let backgroundImageView = UIImageView(frame: view.frame)
//        backgroundImageView.image = UIImage(named: "background")
//        backgroundImageView.alpha = 0.3
//        view.addSubview(backgroundImageView)
//        // Do any additional setup after loading the view.
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollToNext), userInfo: nil, repeats: true)
    }
    
    @objc func scrollToNext() {
        currentIndex = (currentIndex + 1) % images.count
        let offset = CGPoint(x: view.bounds.width * CGFloat(currentIndex), y: 0)
        scrollView.setContentOffset(offset, animated: true)
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
