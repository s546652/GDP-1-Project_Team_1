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
                }
                else {
                    
                    print("inside auth true")
                    
                    if(self.errorLogin){
                        print("inside errorLogin true")
                        // self.performSegue(withIdentifier: "loginSegue", sender: self)
                        
                        
                        
                        self.performSegue(withIdentifier: "logintohome", sender: self)
                        
                        
                        
                        
                    }
                }
            }
        }
        
        //        performSegue(withIdentifier: "logintohome", sender: self)
        //        // Create new Alert
        //        var dialogMessage = UIAlertController(title: "Success", message: "You are succesfully logged in", preferredStyle: .alert)
        //
        //        // Create OK button with action handler
        //        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
        //            print("Ok button tapped")
        //
        //         })
        //
        //        //Add OK button to a dialog message
        //        dialogMessage.addAction(ok)
        //
        //
        //        // Present Alert to
        //        self.present(dialogMessage, animated: true, completion: nil)
        //        print(1)
        //        performSegue(withIdentifier: "logintohome", sender: self)
        //
        
        
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
