//
//  EventsTVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//

import UIKit
import Firebase
import FirebaseFirestore

class EventsTVC: UIViewController, UITableViewDelegate,UITableViewDataSource {

    override func viewWillAppear(_ animated: Bool) {
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.alpha = 0.2
       // view.addSubview(backgroundImageView)
        
    }
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //var searchData:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //search.delegate=self
        tableView.delegate=self
        tableView.dataSource=self
        //searchData=ename
        var t:[String]!
        db = Firestore.firestore()
        
        if Auth.auth().currentUser != nil {
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
                            print(eventDesc)
                            if(eventDesc.isEmpty == false){
                                for x in eventDesc {
                                    if(x.isEmpty == false){
                                        edesc.append(x)
                                    }
                                }
                            }
                        }
                        for index in 0..<11 {
                            let i = edate[index]
                            
                            if i.contains("@") == true && i.contains("Register") == false && i != "x"{
                                print(index)
                                var datearr = i.split(separator: "@")
                                let trimmed = datearr[0].replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression)
                                //Tuesday, March 14, 2023
                                let timeArr = datearr[1].split(separator: "-")
                                let removeLastSpace = timeArr[0].replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) //2:00 pm
                               let finalDateStr = trimmed + removeLastSpace
                                //Tuesday, March 14, 2023 2:00 pm
                                let date = self.convertStringToDate(dateStr: finalDateStr)
                                UNUserNotificationCenter.current().scheduleNotification(identifier: "\(index)", date: date, title: ename[index], body: edesc[index])
                            }else if i.contains("Register") == false {
                                print(index)
                                if i != "x" {
                              let date = "Friday, March 24, 2023 09:09 AM"
                                    //let date = i + " 08:00 AM"
                                    let converteDdate = self.convertStringToDate(dateStr: date)
                                    UNUserNotificationCenter.current().scheduleNotification(identifier: "\(index)", date: converteDdate, title: ename[index], body: edesc[index])
                                }
                            }
                        }
                        tableView.reloadData()
                    }
                    
                }
        }
        else {
            print("EventsTVC")
            self.performSegue(withIdentifier: "logoutSegue", sender: (Any).self)

        }
        print("size of the list is \(ename.count)")
        print("------------Desc-----------")
        print(edesc)
        print("------------name-----------")
        print(ename)
        print("------------date-----------")
        print(edate)
        

        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.alpha = 0.2
        view.addSubview(backgroundImageView)

        
    }

 
    
    
    
    var db: Firestore!
    var size: Int = 0
    var test:[String]!
    var ename:[String] = [""]
    var edate:[String] = [""]
    var edesc:[String] = [""]
    
//    func searchBar(_ search: UISearchBar, textDidChange searchText: String) {
//        searchData = searchText.isEmpty ? ename : ename.filter({(dataString: String) -> Bool in
//            return dataString.range(of: searchText, options: .caseInsensitive) != nil
//        })
//
//        tableView.reloadData()
//    }

    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("the number of records in ename",ename.count-1,edate.count-1,edesc.count-1,size)
            //return ename.count
            return ename.count-1
        
        
    }

    var date:[String] = ["test"]
    var des:[String] = ["test"]
    let recordTimes: KeyValuePairs = ["test1":"test"]

    var testdata=""
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "calendardatacell", for: indexPath)
        cell.textLabel?.text = ename[indexPath.row+1].self//"text"
        cell.detailTextLabel?.text = edate[indexPath.row].self
        print("DATE=============\(edate[indexPath.row])")
         return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "calendarDetailsSegue", sender: indexPath.row)
    }
    var segData:[String]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trans = segue.identifier
        print(trans)
        if trans == "calendarDetailsSegue" {
            
            print("inside calendarDetailsSegue")
            let des = segue.destination as! EventsDetailVC
            var test = ename[(tableView.indexPathForSelectedRow?.row)!]
            print("testing",edate[8])
            des.desc = edesc[(tableView.indexPathForSelectedRow?.row)!+1]
            print("type of ",type(of: (tableView.indexPathForSelectedRow?.row)!+1))
            var indes = (tableView.indexPathForSelectedRow?.row)!+1
            print(ename[indes],edate[indes],edesc[indes])
            des.date = edate[(tableView.indexPathForSelectedRow?.row)!+1]
            des.name = ename[(tableView.indexPathForSelectedRow?.row)!+1]
            print((tableView.indexPathForSelectedRow?.row)!+1)
            print("descc : ",des.desc)
            print("name :",des.name)
            print("date :",des.date)
           
        }

    }
    
    func setupLocalNotification() {
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        var data:String!
//        var eN:String!
//        let trans = segue.identifier
//        if trans == "eventDetailWithSegue" {
//            let des = segue.destination as! tesViewController
//
//            var test = date[(tabelViewOutlet.indexPathForSelectedRow?.row)!]
//            var inOfDate =  dd["Date and Time"]?.index(of: test)
//            for en in dd["Event Name"]!{
//                var enIndes = dd["Event Name"]?.index(of: en)
//                if enIndes! == inOfDate! {
//                    eN = en
//                }
//            }
//           for des in dd["Description"]! {
//               var te = dd["Description"]?.index(of: des)
//               if te! == inOfDate! {
//                   data = des
//            }
//            }
//            des.event = "\(eN!) \(data!)"
//
//        }
//    }

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
    func convertStringToDate(dateStr: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM d, yyyy hh:mm a"
        //Tuesday, March 14, 2023 2:00 pm

        dateFormatter.timeZone = TimeZone.current
        // (abbreviation: "GMT+0:00")
        let dateFromString = dateFormatter.date(from: dateStr)
        let modifiedDate = Calendar.current.date(byAdding: .minute, value: -5, to: dateFromString!)!
        print("modifiedDate \(modifiedDate)")
        print("dateFromString: ", dateFromString!)
        return modifiedDate
    }
 

}
extension UNUserNotificationCenter {
    func scheduleNotification(identifier: String, date: Date, title:String, body:String) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)

        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        self.add(request) {(error) in
            if error != nil {
                print (error)
            }else {
            }
        }
    }
}
