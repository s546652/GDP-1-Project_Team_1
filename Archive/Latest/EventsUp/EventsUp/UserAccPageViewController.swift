//
//  UserAccPageViewController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 2/19/23.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth
import Firebase

class UserAccPageViewController: UIViewController {
    var db: Firestore!
    
    @IBOutlet weak var FirstName: UILabel!
    
    @IBOutlet weak var LastName: UILabel!
    @IBOutlet weak var PhoneNumber: UILabel!
    @IBOutlet weak var DOB: UILabel!
    @IBOutlet weak var EmailAddress: UILabel!
    
    var password = ""
    var usernames = ""
  
    @IBAction func deleteAccount(_ sender: Any) {
        db = Firestore.firestore()
        
        db.collection("User").document(EmailAddress.text!).delete()
        Auth.auth().currentUser?.delete()
        
    }
    @IBAction func logoutAccount(_ sender: Any) {
        db = Firestore.firestore()
        //alert
        
        // Create new Alert
        var dialogMessage = UIAlertController(title: "Confirm", message: "Are you sure you want to logout?", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            do {
            try Auth.auth().signOut()
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

        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
