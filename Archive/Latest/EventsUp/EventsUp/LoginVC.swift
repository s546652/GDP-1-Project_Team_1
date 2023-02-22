//
//  LoginVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//

import UIKit
import Firebase
import AVFoundation

class LoginVC: UIViewController {
    var db: Firestore!
    var errorLogin = true
    var imageView: UIImageView = {
        
        let imageView = UIImageView(frame: CGRect(x:0, y:0, width: 150, height: 150))
        imageView.image = UIImage(named: "logo")
        return imageView
    }()
    
    
    
    @IBAction func LoginBTN(_ sender: UIButton) {
        
        
        
        print("inside login button",EmailTF.text!,EmailTF.text!.isEmpty,PasswordTF.text!,!PasswordTF.text!.isEmpty)
        
        if(!EmailTF.text!.isEmpty && !PasswordTF.text!.isEmpty) {
           
            db = Firestore.firestore()
            Auth.auth().signIn(withEmail: EmailTF.text!, password: PasswordTF.text!){Result, error in
                if error != nil {
                    print(error!.localizedDescription)
                    print("inside auth eror")
                    self.errorLogin = false
                    print("inside auth eror",self.errorLogin)
                    
            
                    let defaultAction = UIAlertAction(title: "Ok",
                                            style: .default) { (action) in
                       
                        // Respond to user selection of the action.
                       }
//                       let cancelAction = UIAlertAction(title: "Disagree",
//                                            style: .cancel) { (action) in
//                        // Respond to user selection of the action.
//                       }
//
                       // Create and configure the alert controller.
                       let alert = UIAlertController(title: "Please cross-check the details",
                             message:error!.localizedDescription ,
                             preferredStyle: .alert)
                       alert.addAction(defaultAction)
                       self.present(alert, animated: true) {
                          // The alert was presented
                       }
                   
                }
                else {
                                        
                    if(self.errorLogin){
                        let defaultAction = UIAlertAction(title: "Ok",
                                                style: .default) { (action) in
                            print("test")
                            self.performSegue(withIdentifier: "logintohome", sender: self)
                           }
                          let alert = UIAlertController(title: "Details",
                                 message: "Successfull login",
                                 preferredStyle: .alert)
                           alert.addAction(defaultAction)
                           self.present(alert, animated: true) {
                           }
                    }
                }
            }
        }
    }
    
    //@IBOutlet weak var logoIV: UIImageView!
    
    @IBOutlet var videoLayerUV: UIView!
    
    @IBOutlet weak var EmailTF: UITextField!
    @IBOutlet weak var PasswordTF: UITextField!
    
    
    
    @IBAction func SignupBTN(_ sender: UIButton) {
        print(1)
    }
    
    
    @IBOutlet weak var OrLabel: UILabel!
    
    @IBOutlet weak var MainStack: UIStackView!
    
    func playVideo()
    {
        guard let path = Bundle.main.path(forResource: "Day One at Northwest", ofType: "mp4") else
        {
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        self.videoLayerUV.layer.addSublayer(playerLayer)
        
        player.play()
        player.isMuted = true
        // videoLayerUV.bringSubviewToFront(logoIV)
        videoLayerUV.bringSubviewToFront(MainStack)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        DispatchQueue.main.asyncAfter(deadline: .now()+10){
            //self.performSegue(withIdentifier: "segue", sender: self)
        }
        
        playVideo()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()+5){
            self.animation()
        }
        self.animation()
    }
    
    func animation(){
        UIView.animate(withDuration: 1){
            let size = self.view.frame.size.width * 2
            let xposition = size - self.view.frame.width
            let yposition = self.view.frame.height - size
            
            self.imageView.frame = CGRect(x: -(xposition/2), y: yposition/2, width: size, height: size)
            self.imageView.alpha = 0
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
