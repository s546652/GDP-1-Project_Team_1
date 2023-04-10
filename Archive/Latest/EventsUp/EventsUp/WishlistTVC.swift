//
//  WishlistTVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//

import UIKit
import Firebase
import FirebaseFirestore
import AVFAudio


class WishlistTVC: UITableViewController {
    var username:String!
    var ename:[String] = [""]
    //var edate:[String] = [""]
    var db: Firestore!
    var size: Int = 0
    var records:WishList!
    
    @IBOutlet weak var cellOutlet: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
      
        var t:String!
        db = Firestore.firestore()
        if Auth.auth().currentUser != nil {
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
                    // print("size of the list is \(size)")
                }
        }
        else{
            self.performSegue(withIdentifier: "logoutSegue", sender: (Any).self)

        }
        
    }
    
    
    func deleteWishList(index:Int) {
        let name = ename[index + 1]
        self.db.collection("WishList").document(name).delete()
        self.ename.remove(at: index + 1)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    var player: AVAudioPlayer!
    
    func playSound(){
        let url = Bundle.main.url(forResource: "tap", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.alpha = 0.3
        view.addSubview(backgroundImageView)
        
        cellOutlet.delegate = self
        cellOutlet.delegate = self
   
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(ename.count-1,size)
        return ename.count-1
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        playSound()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell = cellOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //print(ename[indexPath.row+1].self)
        cell.textLabel?.text = ename[indexPath.row+1].self
      //  cell.detailTextLabel?.text = edate[indexPath.row+1].self
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
           if editingStyle == .delete {
               db = Firestore.firestore()
               ename.remove(at: indexPath.startIndex)
               db.collection("WishList").document(ename[indexPath.row].self).delete()
               tableView.deleteRows(at: [indexPath], with: .fade)
           }
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tran = segue.identifier
        if tran == "logoutSegue" {
            let dest = segue.destination as! LoginVC 
        }
    }

}
extension WishlistTVC {
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView,
                    trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
     {
         let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
             success(true)
             self.showActionSheet(index: indexPath.row)
         })
         deleteAction.backgroundColor = .red

         return UISwipeActionsConfiguration(actions: [deleteAction])
     }
    
    func showActionSheet(index: Int) {
        let alert = UIAlertController(title: "Alert!", message: "Would you like to delete?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive , handler:{ (UIAlertAction)in
            self.deleteWishList(index: index)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:{ (UIAlertAction)in
            print("User click Dismiss button")
        }))

        
        

        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
}

