//
//  EventsListController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 10/2/22.
//

import Firebase
import FirebaseFirestore
import UIKit

class EventsListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var db: Firestore!
    var size: Int = 0
    var test:[String]!
    var ename:[String] = ["x"]
    var edate:[String] = ["x"]
    var edesc:[String] = ["x"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("the number of records in ename",ename.count-1,edate.count-1,edesc.count-1,size)
        return ename.count-1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = dataTableView.dequeueReusableCell(withIdentifier: "calendardatacell", for: indexPath)
        cell.textLabel?.text = ename[indexPath.row+1].self//"text"
        return cell
    }
    
    
    @IBOutlet weak var dataTableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        var t:[String]!
        db = Firestore.firestore()
        db.collection("data")
            .getDocuments() { [self] (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    print(555,querySnapshot!.documents.count)
                    size = querySnapshot!.documents.count
                    for document in querySnapshot!.documents {
                        t = document.get("name") as! [String]
                        if(t!.isEmpty == false){
                            for x in t! {
                                if(x.isEmpty == false){
                                    ename.append(x)
                                }
                            }
                        }
                        //for storing date
                       var eventDate = document.get("date") as! [String]
                        print(eventDate)
                        if(eventDate.isEmpty == false){
                            for x in eventDate {
                                if(x.isEmpty == false){
                                    edate.append(x)
                                }
                            }
                        }
                        // for storing desc
                        var eventDesc = document.get("description") as! [String]
                        if(eventDesc.isEmpty == false){
                            for x in eventDesc {
                                if(x.isEmpty == false){
                                    edesc.append(x)
                                }
                            }
                        }
                    }
                    dataTableView.reloadData()
                }
                
            }
        
        print("size of the list is \(ename.count)")
        print("------------Desc-----------")
        print(edesc)
        print("------------name-----------")
        print(ename)
        print("------------date-----------")
        print(edate)
        dataTableView.delegate = self
        dataTableView .dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trans = segue.identifier
        print(trans)
        if trans == "calendarDetailsSegue" {
            
            print("inside calendarDetailsSegue")
            let des = segue.destination as! CalendarEventDetailDesViewController
            var test = ename[(dataTableView.indexPathForSelectedRow?.row)!]
            print("testing",edate[8])
            des.desc = edesc[(dataTableView.indexPathForSelectedRow?.row)!+1]
            print("type of ",type(of: (dataTableView.indexPathForSelectedRow?.row)!+1))
            var indes = (dataTableView.indexPathForSelectedRow?.row)!+1
            print(ename[indes],edate[indes],edesc[indes])
            des.date = edate[(dataTableView.indexPathForSelectedRow?.row)!+1]
            des.name = ename[(dataTableView.indexPathForSelectedRow?.row)!+1]
            print((dataTableView.indexPathForSelectedRow?.row)!+1)
            print("descc : ",des.desc)
            print("name :",des.name)
            print("date :",des.date)
           
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
