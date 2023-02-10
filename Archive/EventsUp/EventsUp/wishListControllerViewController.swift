//
//  wishListControllerViewController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 1/30/23.
//

import UIKit
import SwiftUI
import Firebase
//import FirebaseFirestoreSwift
import FirebaseFirestore


class wishListControllerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    var db: Firestore!
    var size: Int = 0
    var records:WishList!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)  -> Int {
      return size

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = cellOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "test"
        return cell
    }
    

    @IBOutlet weak var cellOutlet: UITableView!
    
    
    override func viewDidLoad()   {
        super.viewDidLoad()
       
        db = Firestore.firestore()
        
        db.collection("WishList").whereField("User", isEqualTo: "roshni@gmail.com")
            .getDocuments() { [self] (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    print(555,querySnapshot!.documents.count)
                    size = querySnapshot!.documents.count
                    for document in querySnapshot!.documents {
                        print("\(document.documentID) => \(document.data())")
                       
                    }
                   
                   
                }
        }
        print("size of the list is \(size)")
        cellOutlet.delegate = self
        cellOutlet .dataSource = self
    }
    
   
}


