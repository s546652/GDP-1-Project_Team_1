//
//  AdminDetailVC.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 3/1/23.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseStorage


class AdminDetailVC: UIViewController {
    var db: Firestore!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        print("in the test page")
        db = Firestore.firestore()
      
        db.collection("Assets")
            .getDocuments() { [self] (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    print(555,querySnapshot!.documents.count)
                   // size = querySnapshot!.documents.count
                    for document in querySnapshot!.documents {
                        print(1111,querySnapshot!.documents.count)
                        print(document.get("image link"),document.data())
                        for assets in document.data(){
                            print("dimpy ",assets.value)
                            imageOutlet.image = UIImage(named: assets.value as! String)
                            
                            //imageOutlet.image = UIImage(named: "logo")
                        }
                  }
                }
        }
        print("size of the list is \(size)")
      
    
        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func button(_ sender: Any) {
        print("inside button")
        let storageRef = Storage.storage().reference()
        print("whats inside storageRef ",storageRef)
        let imageData = UIImage(named: "img6")?.jpegData(compressionQuality: 0.8)
    //    let imagetest = logo
        print("whats inside imageData", imageData)
        let fileRef = storageRef.child("images/\(UUID().uuidString).jpg")
        print("inside fileRef", fileRef)
        guard imageData != nil else {
            return
        }
        
   
        let uploadTask = fileRef.putData(imageData!,metadata: nil) {
            metadata, error in
            if error == nil && metadata != nil {
                print("failed",error?.localizedDescription)
            }
            else {
                print("inside else block")
              
            }
        }
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected  object to the new view controller.
    }
    */

}

