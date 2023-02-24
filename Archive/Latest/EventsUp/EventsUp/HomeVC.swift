//
//  HomeVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//

import UIKit

class HomeVC: UIViewController {

    
    
    @IBOutlet weak var imageView1: UIImageView!

    
    @IBOutlet weak var imageView2: UIImageView!
    
    
    @IBOutlet weak var imageView3: UIImageView!
    
    
    let images1 = [UIImage(named: "img1"), UIImage(named: "img2"), UIImage(named: "img3"), UIImage(named: "img4"), UIImage(named: "img5"), UIImage(named: "img9"), UIImage(named: "img10"), UIImage(named: "img11"), UIImage(named: "img1"), UIImage(named: "img2"), UIImage(named: "img3"), UIImage(named: "img4"), UIImage(named: "img5"), UIImage(named: "img6"),  UIImage(named: "img7"), UIImage(named: "img6"), UIImage(named: "img7"), UIImage(named: "img9"), UIImage(named: "img10"),  UIImage(named: "img11")]
    
  let images2 = [UIImage(named: "img4"), UIImage(named: "img5"), UIImage(named: "img6"), UIImage(named: "img7"), UIImage(named: "img1"), UIImage(named: "img2"), UIImage(named: "img3"), UIImage(named: "img4"), UIImage(named: "img5"), UIImage(named: "img9"), UIImage(named: "img10"), UIImage(named: "img11"), UIImage(named: "img1"), UIImage(named: "img2"), UIImage(named: "img9"), UIImage(named: "img10"), UIImage(named: "img11"), UIImage(named: "img1"), UIImage(named: "img2"),  UIImage(named: "img3")]
    
  let images3 = [UIImage(named: "img9"), UIImage(named: "img10"), UIImage(named: "img11"), UIImage(named: "img1"), UIImage(named: "img5"), UIImage(named: "img6"), UIImage(named: "img7"), UIImage(named: "img1"), UIImage(named: "img2"), UIImage(named: "img3"), UIImage(named: "img4"), UIImage(named: "img5"), UIImage(named: "img9"), UIImage(named: "img10"), UIImage(named: "img2"), UIImage(named: "img3"), UIImage(named: "img4"), UIImage(named: "img5"), UIImage(named: "img6"),  UIImage(named: "img7")]
    
    var currentIndex = 0
    var timer1: Timer?
  var timer2: Timer?
  var timer3: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Set the initial image in the UIImageView
        imageView1.image = images1.first as? UIImage
        imageView2.image = images2.first as? UIImage
        imageView3.image = images3.first as? UIImage
        
               // Start the timer to change the image in the UIImageView
        timer1 = Timer.scheduledTimer(timeInterval: 2.2, target: self, selector: #selector(changeImage1), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(changeImage2), userInfo: nil, repeats: true)
        timer3 = Timer.scheduledTimer(timeInterval: 2.8, target: self, selector: #selector(changeImage3), userInfo: nil, repeats: true)

    }
    
    @objc func changeImage1() {
            // Increment the current index
            currentIndex += 1

            // If the current index is greater than or equal to the number of images, reset it to 0
            if currentIndex >= images1.count {
                currentIndex = 0
            }

            // Set the image in the UIImageView to the next image in the array
            imageView1.image = images1[currentIndex]
        }
    
    
    @objc func changeImage2() {
            // Increment the current index
            currentIndex += 1

            // If the current index is greater than or equal to the number of images, reset it to 0
            if currentIndex >= images2.count {
                currentIndex = 0
            }

            // Set the image in the UIImageView to the next image in the array
            imageView2.image = images2[currentIndex]
        }
    
    
    @objc func changeImage3() {
            // Increment the current index
            currentIndex += 1

            // If the current index is greater than or equal to the number of images, reset it to 0
            if currentIndex >= images3.count {
                currentIndex = 0
            }

            // Set the image in the UIImageView to the next image in the array
            imageView3.image = images3[currentIndex]
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
