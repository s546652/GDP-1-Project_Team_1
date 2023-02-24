//
//  EventsDetailVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/21/23.
//

import UIKit
import Firebase
import FirebaseFirestore
class EventsDetailVC: UIViewController {

    var date = ""
    var name = ""
    var desc = ""
    @IBOutlet weak var DateOutlet: UITextView!
    
    
    
    
    @IBOutlet weak var EventNameOutlet: UITextView!
    
    @IBOutlet weak var EventDescOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//print(date,name,desc)
        DateOutlet.text = date
        EventNameOutlet.text = name
        EventDescOutlet.text = desc
        // Do any additional setup after loading the view.
    }
    

    @IBAction func wishListBTN(_ sender: Any) {
       // var a = [event,"test"]
        let db = Firestore.firestore()
        let ref = db.collection("WishList").document(name)
        print(ref,(Auth.auth().currentUser?.email!)!)
        ref.setData(["EventName": name,"EventDesc":date,"User": (Auth.auth().currentUser?.email!)!,"EventDate":desc]){error in
            if let error = error {
                print(error.localizedDescription)
            }
            else{
                
                let defaultAction = UIAlertAction(title: "Ok",
                                        style: .default) { (action) in
                   
                    // Respond to user selection of the action.
                   }
             let alert = UIAlertController(title: "Event added into your wishlist",
                         message:"" ,
                         preferredStyle: .alert)
                   alert.addAction(defaultAction)
                   self.present(alert, animated: true) {
                      // The alert was presented
                   }
               // print((Auth.auth().currentUser?.email!)!)
            }
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
