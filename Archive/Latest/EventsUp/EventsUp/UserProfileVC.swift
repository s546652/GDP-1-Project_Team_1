//
//  UserProfileVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/21/23.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth
import Firebase
import AVFAudio

class UserProfileVC: UIViewController {
    var db: Firestore!
    var password = ""
    var usernames = ""
    
    @IBOutlet weak var FirstName: UILabel!
    
    @IBOutlet weak var LastName: UILabel!
    @IBOutlet weak var PhoneNumber: UILabel!
    @IBOutlet weak var DOB: UILabel!
    @IBOutlet weak var EmailAddress: UILabel!

  
    @IBAction func deleteAccount(_ sender: Any) {
        playSound()
        db = Firestore.firestore()
        db.collection("User").document(EmailAddress.text!).delete()
        Auth.auth().currentUser?.delete()
       
        let defaultAction = UIAlertAction(title: "Ok",
                                style: .default) { (action) in
           // wishListSegue
            self.performSegue(withIdentifier: "logoutSegue", sender: Any?.self)            // Respond to user selection of the action.
           }
     let alert = UIAlertController(title: "User Account Deleted",
                 message:"" ,
                 preferredStyle: .alert)
           alert.addAction(defaultAction)
           self.present(alert, animated: true) {
              // The alert was presented
           }
    }
    
    var player: AVAudioPlayer!
    
    func playSound(){
        let url = Bundle.main.url(forResource: "crumple-03-40747", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
    func logOutSound(){
        let url = Bundle.main.url(forResource: "metallic-door-shut-98740", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
    
    
    @IBAction func logoutAccount(_ sender: Any) {
        logOutSound()
        db = Firestore.firestore()
        //alert
        
        // Create new Alert
        var dialogMessage = UIAlertController(title: "Confirm", message: "Are you sure you want to logout?", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            do {
            try Auth.auth().signOut()
                self.performSegue(withIdentifier: "logoutSegue", sender: Any?.self)
            } catch let signOutError as NSError {
              print("Error signing out: %@", signOutError)
            }
            print("logged out",Auth.auth().currentUser)
         })
        
        //Add OK button to a dialog message
        dialogMessage.addAction(ok)

        // Present Alert to
        self.present(dialogMessage, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        db = Firestore.firestore()
        if Auth.auth().currentUser != nil {
            print("inisde user profile vc",(Auth.auth().currentUser?.email!)!)
           // db = Firestore.firestore()
            usernames = (Auth.auth().currentUser?.email!)!
            db.collection("User").whereField("username", isEqualTo: usernames)
                .getDocuments() { [self] (querySnapshot, err) in
                    if let err = err {
                        print("Error getting documents: \(err)")
                    } else {
                        print(555,querySnapshot!.documents.count)
                        for document in querySnapshot!.documents {
                            print(document.data().keys)
                            print(document.get("username"),123456789)
                            EmailAddress.text! = document.get("username")! as! String
                            FirstName.text! = document.get("fname")! as! String
                            LastName.text! = document.get("lname")! as! String
                            PhoneNumber.text! = document.get("PhoneNumber")! as! String
                            DOB.text! = document.get("DOB")! as! String
                        }
                    }
                }
        }
        else {
            print("UserProfile")
            self.performSegue(withIdentifier: "logoutSegue", sender: (Any).self)

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
