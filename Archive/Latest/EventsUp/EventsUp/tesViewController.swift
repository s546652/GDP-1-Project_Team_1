//
//  tesViewController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/16/22.
//

import UIKit
import Firebase


class tesViewController: UIViewController {
    var event:String!
    var username:String!
    var eventDate:String!
    
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(username)
        print("test in tesViewController")
        textViewOutlet.text = event!
        // Do any additional setup after loading the view.
    
    

        // Do any additional setup after loading the view.
    }
    
    @IBAction func wishlistFun(_ sender: Any) {
        var a = [event,"test"]
        let db = Firestore.firestore()
        let ref = db.collection("WishList").document(event)
        print(ref,username)
        ref.setData(["EventName": event,"EventDesc":eventDate,"User": self.username]){error in
            if let error = error {
                print(error.localizedDescription)
            }
            else{
                
                print("check")
                print(self.username)
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
