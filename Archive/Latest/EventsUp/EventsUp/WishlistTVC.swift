//
//  WishlistTVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//

import UIKit
import Firebase
import FirebaseFirestore


class WishlistTVC: UITableViewController {
    var username:String!
    var ename:[String] = ["x"]
    var edate:[String] = ["x"]
    var db: Firestore!
    var size: Int = 0
    var records:WishList!
    
   
   
    

    @IBOutlet weak var cellOutlet: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
      
        var t:String!
        db = Firestore.firestore()

            db.collection("WishList").whereField("User", isEqualTo:  (Auth.auth().currentUser?.email!)!)
                .getDocuments() { [self] (querySnapshot, err) in
                    if let err = err {
                        print("Error getting documents: \(err)")
                    } else {
                        print(555,querySnapshot!.documents.count)
                        size = querySnapshot!.documents.count
                        for document in querySnapshot!.documents {
                            t = document.documentID
                            if(t!.isEmpty == false && !(ename.contains(t!))){
                                
                                ename.append(t)
                                
                            }
                        }
                    cellOutlet.reloadData()
                    }
            print("size of the list is \(size)")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.alpha = 0.3
        view.addSubview(backgroundImageView)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        cellOutlet.delegate = self
        cellOutlet.delegate = self
   
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        #warning Incomplete implementation, return the number of sections
//       return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       // return 0
        print(ename.count-1,size)
        return ename.count-1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell = cellOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        print(ename[indexPath.row+1].self)
        cell.textLabel?.text = ename[indexPath.row+1].self
      //  cell.detailTextLabel?.text = edate[indexPath.row+1].self
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
