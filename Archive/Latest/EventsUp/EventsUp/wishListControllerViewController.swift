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
   
    var username:String!
    var ename:[String] = ["x"]
    var db: Firestore!
    var size: Int = 0
    var records:WishList!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)  -> Int {
        print(ename.count-1,size)
        return ename.count-1

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = cellOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        print(ename[indexPath.row+1].self)
        cell.textLabel?.text = ename[indexPath.row+1].self
        return cell
    }
    

    @IBOutlet weak var cellOutlet: UITableView!
    
    
    override func viewDidLoad()   {
        super.viewDidLoad()
        var t:String!
        db = Firestore.firestore()
        print("username --- ",username!)
        db.collection("WishList").whereField("User", isEqualTo: username!)
            .getDocuments() { [self] (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    print(555,querySnapshot!.documents.count)
                    size = querySnapshot!.documents.count
                    for document in querySnapshot!.documents {
                        t = document.documentID
                        print(t)
                        if(t!.isEmpty == false){
                            ename.append(t)
                    }
                  }
                    cellOutlet.reloadData()
                }
               // print(ename)
        }
        print("size of the list is \(size)")
        cellOutlet.delegate = self
        cellOutlet .dataSource = self
    }
    
   
}


