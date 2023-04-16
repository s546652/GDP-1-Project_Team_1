//
//  EventsTVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//
import UIKit
import Firebase
import FirebaseFirestore
import AVFAudio

class EventsTVC: UIViewController, UITableViewDelegate,UITableViewDataSource, UISearchBarDelegate {

    override func viewWillAppear(_ animated: Bool) {
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.alpha = 0.2
        view.addSubview(backgroundImageView)
    }
    
    var searchName:[String]!
    var sname:String!
    var searchdate:String!
    var searchdesc:String!
    var searchD:[String]!
    var x=0
    
    
    @IBOutlet weak var search: UISearchBar!
    
    
    @IBOutlet weak var searchDate: UISearchBar!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        db = Firestore.firestore()
        if Auth.auth().currentUser == nil {
            
            self.performSegue(withIdentifier: "eventsLogout", sender: (Any).self)

            
//            if ConstantsEventsUP.yourVariable == true {
//                self.performSegue(withIdentifier: "logoutSegue", sender: (Any).self)
//            }
        }
        search.delegate=self
        searchDate.delegate=self
        tableView.delegate=self
        tableView.dataSource=self
        searchName=ename
        searchD=edate
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
                      
                                               for i in 0..<ename.count{
                                                   if(i<10){
                                                       ename[i]="00"+String(i)+ename[i]
                                                       edate[i]="00"+String(i)+edate[i]
                                                       edesc[i]="00"+String(i)+edesc[i]
                                                      
                                                   }
                                                   else if(i>=10 && i<100){
                                                       ename[i]="0"+String(i)+ename[i]
                                                       edate[i]="0"+String(i)+edate[i]
                                                       edesc[i]="0"+String(i)+edesc[i]
                                                       
                                                   }
                                                   else if(i>=100){
                                                       ename[i]=String(i)+ename[i]
                                                       edate[i]=String(i)+edate[i]
                                                       edesc[i]=String(i)+edesc[i]
                                                       
                                                   }
                                               }
                                               searchD=edate
                                               searchName=ename

                        tableView.reloadData()
                        //print(searchName.count)
                    }
                    
                }
        }
        else {
            print("EventsTVC")
            self.performSegue(withIdentifier: "eventsLogout", sender: (Any).self)

        }
        
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.alpha = 0.2
        view.addSubview(backgroundImageView)
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            if searchBar==search{
                x=0
                searchName = searchText.isEmpty ? ename : ename.filter({(dataString: String) -> Bool in
                    return dataString.range(of: searchText, options: .caseInsensitive) != nil
                })
            }
            if searchBar==searchDate{
                x=1
                searchD = searchText.isEmpty ? edate : edate.filter({(dataString: String) -> Bool in
                    return dataString.range(of: searchText, options: .caseInsensitive) != nil
                })
            }
            tableView.reloadData()
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }

        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return ""
        }
    
    var db: Firestore!
    var size: Int = 0
    var test:[String]!
    var ename:[String] = [""]
    var edate:[String] = [""]
    var edesc:[String] = [""]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if x==0{
            return searchName.count-1
        }
        else{
            return searchD.count-1
        }
    }
    
    var player: AVAudioPlayer!
    
    func playSound(){
        let url = Bundle.main.url(forResource: "tap", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
    var date:[String] = ["test"]
    var des:[String] = ["test"]
    let recordTimes: KeyValuePairs = ["test1":"test"]
    var testdata=""
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("-----------------------123456")
        let cell = tableView.dequeueReusableCell(withIdentifier: "calendardatacell", for: indexPath)
        print("-----------------------123456")
        if x==0{

            for i in 0..<ename.count{
                if searchName[indexPath.row+1].prefix(upTo: String.Index(encodedOffset: 3))==edate[i].prefix(upTo: String.Index(encodedOffset: 3)){
                    searchdate=String(edate[i].suffix(from: String.Index(encodedOffset: 3)))
                }
            }
            print("in x =0"+String(searchName[indexPath.row+1].suffix(from: String.Index(encodedOffset: 3))))
            cell.textLabel?.text = String(searchName[indexPath.row+1].suffix(from: String.Index(encodedOffset: 3)))
            cell.detailTextLabel?.text = searchdate.self
        }
        else if x==1{
            for i in 0..<edate.count{
                    if searchD[indexPath.row+1].prefix(upTo: String.Index(encodedOffset: 3))==edate[i].prefix(upTo: String.Index(encodedOffset: 3)){
                        searchdate=String(edate[i].suffix(from: String.Index(encodedOffset: 3)))
                    }
                    if searchD[indexPath.row+1].prefix(upTo: String.Index(encodedOffset: 3))==ename[i].prefix(upTo: String.Index(encodedOffset: 3)){
                        sname=String(ename[i].suffix(from: String.Index(encodedOffset: 3)))
                    }
            }
            print("sname ---"+sname.self)
            cell.textLabel?.text = sname.self
            cell.detailTextLabel?.text = searchdate.self
        }
           return cell
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        playSound()
        
        performSegue(withIdentifier: "calendarDetailsSegue", sender: indexPath.row)
        
    }
    var segData:[String]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trans = segue.identifier
        var sname=""
        print(trans)
        if trans == "calendarDetailsSegue" {
            let des = segue.destination as! EventsDetailVC
            var test = ename[(tableView.indexPathForSelectedRow?.row)!]
            print("testing",edate[8])
            des.desc = edesc[(tableView.indexPathForSelectedRow?.row)!+1]
            print("type of ",type(of: (tableView.indexPathForSelectedRow?.row)!+1))
            
            for i in 0..<ename.count{
                if x==0{
                    if searchName[(tableView.indexPathForSelectedRow?.row)!+1].prefix(upTo: String.Index(encodedOffset: 3))==edate[i].prefix(upTo: String.Index(encodedOffset: 3)){
                        searchdate=String(edate[i].suffix(from: String.Index(encodedOffset: 3)))
                    }
                    if searchName[(tableView.indexPathForSelectedRow?.row)!+1].prefix(upTo: String.Index(encodedOffset: 3))==edesc[i].prefix(upTo: String.Index(encodedOffset: 3)){
                        searchdesc=String(edesc[i].suffix(from: String.Index(encodedOffset: 3)))
                        sname=String(searchName[(tableView.indexPathForSelectedRow?.row)!+1].suffix(from: String.Index(encodedOffset: 3)))
                    }
                }
                if x==1{
                    if searchD[(tableView.indexPathForSelectedRow?.row)!+1].prefix(upTo: String.Index(encodedOffset: 3))==ename[i].prefix(upTo: String.Index(encodedOffset: 3)){
                        sname=String(ename[i].suffix(from: String.Index(encodedOffset: 3)))
                    }
                    if searchD[(tableView.indexPathForSelectedRow?.row)!+1].prefix(upTo: String.Index(encodedOffset: 3))==edesc[i].prefix(upTo: String.Index(encodedOffset: 3)){
                        searchdesc=String(edesc[i].suffix(from: String.Index(encodedOffset: 3)))
                    }
                    searchdate=String(searchD[(tableView.indexPathForSelectedRow?.row)!+1].suffix(from: String.Index(encodedOffset: 3)))
                }
            }
            test = searchName[(tableView.indexPathForSelectedRow?.row)!]
                        des.desc = searchdesc
            var indes = (tableView.indexPathForSelectedRow?.row)!+1
            print(ename[indes],edate[indes],edesc[indes])
            des.date = edate[(tableView.indexPathForSelectedRow?.row)!+1]
            des.name = ename[(tableView.indexPathForSelectedRow?.row)!+1]
            print((tableView.indexPathForSelectedRow?.row)!+1)
            print("descc : ",des.desc)
            print("name :",des.name)
            print("date :",des.date)
            
            des.date = searchdate
           des.name = sname
//            String(searchName[(tableView.indexPathForSelectedRow?.row)!+1].suffix(from: String.Index(encodedOffset: 3)))
//
        }

    }
    
//    func DateConversion(var ss:String) -> String{
//            var s:String=ss
//            if(s.contains("@")){
//                s=s.substring(to: s.firstIndex(of: "@")!)
//            }
//            if(s.contains("-")){
//                s=s.substring(to: s.firstIndex(of: "-")!)
//            }
//            if(s.contains(" ")){
//                s=s.replacingOccurrences(of: " ", with: "")
//                //s=s.replacing(" ", with: "")
//            }
//            var l=s.split(separator: ",")
//            l.remove(at: 0)
//            var ss:String=""
//            if(l[0].contains("January")){
//                ss=l[0].replacingOccurrences(of: "January", with: "01/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("January", with: "01/")
//            }
//            if(l[0].contains("February")){
//                ss=l[0].replacingOccurrences(of: "February", with: "02/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("February", with: "02/")
//            }
//            if(l[0].contains("March")){
//                ss=l[0].replacingOccurrences(of: "March", with: "03/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("March", with: "03/")
//            }
//            if(l[0].contains("April")){
//                ss=l[0].replacingOccurrences(of: "April", with: "04/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("April", with: "04/")
//            }
//            if(l[0].contains("May")){
//                ss=l[0].replacingOccurrences(of: "May", with: "05/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("May", with: "05/")
//            }
//            if(l[0].contains("June")){
//                ss=l[0].replacingOccurrences(of: "June", with: "06/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("June", with: "06/")
//            }
//            if(l[0].contains("July")){
//                ss=l[0].replacingOccurrences(of: "July", with: "07/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("July", with: "07/")
//            }
//            if(l[0].contains("August")){
//                ss=l[0].replacingOccurrences(of: "August", with: "08/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("August", with: "08/")
//            }
//            if(l[0].contains("September")){
//                ss=l[0].replacingOccurrences(of: "September", with: "09/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("January", with: "09/")
//            }
//            if(l[0].contains("October")){
//                ss=l[0].replacingOccurrences(of: "October", with: "10/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("October", with: "10/")
//            }
//            if(l[0].contains("November")){
//                ss=l[0].replacingOccurrences(of: "November", with: "11/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("November", with: "11/")
//            }
//            if(l[0].contains("December")){
//                ss=l[0].replacingOccurrences(of: "December", with: "12/")
//                l[0]=ss.suffix(from: String.Index(encodedOffset: 0))
//                //l[0]=l[0].replacing("December", with: "12/")
//            }
//            var d1=l[0]+"/"+l[1]
//            print(d1)
//
//            let d2 = DateFormatter()
//            d2.dateFormat = "MM/dd/yyyy"
//            print(d2.date(from: String(d1))!)
//
//            var d=d2.date(from: String(d1))!
//            return String(d1)
//        }
//
    func setupLocalNotification() {
        
    }

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
