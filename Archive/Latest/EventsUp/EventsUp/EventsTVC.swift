//
//  EventsTVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/9/23.
//

import UIKit
import Firebase
import FirebaseFirestore

class EventsTVC: UITableViewController {

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
//
        let backgroundImageView = UIImageView(frame: view.frame)
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.alpha = 0.2
        view.addSubview(backgroundImageView)

        
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
    
    
    
    var db: Firestore!
    var size: Int = 0
    var test:[String]!
    var ename:[String] = ["x"]
    var edate:[String] = ["x"]
    var edesc:[String] = ["x"]
    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("the number of records in ename",ename.count-1,edate.count-1,edesc.count-1,size)
        return ename.count-1
    }

    var date:[String] = ["test"]
    var des:[String] = ["test"]
    let recordTimes: KeyValuePairs = ["test1":"test"]

    var testdata=""
    
    
    @IBOutlet var dataTableView: UITableView!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = dataTableView.dequeueReusableCell(withIdentifier: "calendardatacell", for: indexPath)
        cell.textLabel?.text = ename[indexPath.row+1].self//"text"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "calendarDetailsSegue", sender: indexPath.row)
    }
    var segData:[String]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trans = segue.identifier
        print(trans)
        if trans == "calendarDetailsSegue" {
            
            print("inside calendarDetailsSegue")
            let des = segue.destination as! EventsDetailVC
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
    
    var dd = ["Date and Time": ["Friday, December 2, 2022", "Friday, December 2, 2022", "Friday, December 2, 2022 @ 11:00 am - 7:00 pm", "Friday, December 2, 2022 @ 11:00 am - 2:00 pm", "Friday, December 2, 2022 @ 6:30 pm - 8:30 pm", "Saturday, December 3, 2022", "Saturday, December 3, 2022", "Saturday, December 3, 2022 @ 9:00 am - 2:00 pm", "Saturday, December 3, 2022 @ 6:30 pm - 8:30 pm", "Sunday, December 4, 2022 @ 12:00 pm - 2:00 pm", "Sunday, December 4, 2022 @ 1:00 pm - 3:00 pm", "Monday, December 5, 2022", "Monday, December 5, 2022 @ 8:00 am - 5:00 pm", "Monday, December 5, 2022 @ 10:00 am", "Monday, December 5, 2022 @ 1:00 pm", "Tuesday, December 6, 2022", "Tuesday, December 6, 2022 @ 8:00 am - 5:00 pm", "Wednesday, December 7, 2022", "Wednesday, December 7, 2022", "Wednesday, December 7, 2022 @ 8:00 am - 5:00 pm", "Thursday, December 8, 2022", "Thursday, December 8, 2022 @ 8:00 am - 5:00 pm", "Thursday, December 8, 2022 @ 9:00 am", "Thursday, December 8, 2022 @ 4:00 pm - 6:00 pm", "Friday, December 9, 2022", "Friday, December 9, 2022 @ 8:00 am - 5:00 pm", "Friday, December 9, 2022 @ 10:00 am - 8:00 pm", "Saturday, December 10, 2022 @ 1:30 pm", "Saturday, December 10, 2022 @ 3:30 pm", "Sunday, December 11, 2022 @ 1:30 pm", "Sunday, December 11, 2022 @ 2:00 pm - 3:00 pm", "Sunday, December 11, 2022 @ 3:30 pm", "Monday, December 12, 2022", "Monday, December 12, 2022", "Monday, December 12, 2022", "Monday, December 12, 2022", "Tuesday, December 13, 2022", "Tuesday, December 13, 2022 @ 5:30 am", "Tuesday, December 13, 2022 @ 12:00 pm", "Wednesday, December 14, 2022", "Thursday, December 15, 2022", "Thursday, December 15, 2022 -", "Thursday, December 15, 2022 @ 1:30 pm", "Thursday, December 15, 2022 @ 5:30 pm", "Thursday, December 15, 2022 -", "Saturday, December 17, 2022", "Thursday, December 15, 2022 -", "Saturday, December 17, 2022", "Thursday, December 15, 2022 -", "Thursday, December 15, 2022 -", "Thursday, December 15, 2022 -", "Thursday, December 15, 2022 -", "Thursday, December 22, 2022", "Thursday, December 15, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Monday, December 26, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Monday, December 26, 2022 @ 9:00 am", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Monday, December 26, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Monday, December 26, 2022 @ 9:00 am", "Monday, December 26, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Monday, December 26, 2022 -", "Friday, December 23, 2022 -", "Friday, December 23, 2022 -", "Wednesday, December 28, 2022 @ 2:00 pm"], "Event Name": ["Campus Classes end", "Second block ends", "Art Show & Sale", "Empty Cups", "47th Yuletide Feaste", "Men\'s Basketball at Pittsburg State", "Women\'s Basketball at Pittsburg State", "Art Show & Sale", "47th Yuletide Feaste", "Sunday Campus Visit", "Sunday Campus Visit", "Final Exam Week", "Textbook Return", "Board of Regents Committee Meeting: People, Finance and Operations", "Board of Regents Committee Meeting: Academic and Student Engagement", "Final Exam Week", "Textbook Return", "Faculty and Staff: Cookies and Cocoa", "Final Exam Week", "Textbook Return", "Final Exam Week", "Textbook Return", "Board of Regents Meeting", "Grad Fest", "Final Exam Week", "Textbook Return", "Winter commencement ceremonies", "Women\'s Basketball vs. Nebraska-Kearney", "Men\'s Basketball vs. Nebraska-Kearney", "Women\'s Basketball vs. Fort Hays State", "Alpha Psi Omega Children\'s Show: “Once Upon a Crime: The Trial of Goldilocks”", "Men\'s Basketball vs. Fort Hays State", "Grades due 10 a.m.", "Last date for 100% refund for dropped intersession course or withdrawal", "Online intersession classes begin", "Women\'s Basketball at McKendree", "Last date for 75% refund for dropped intersession course or withdrawal", "Employee Recognition Event - Breakfast", "Employee Recognition Event - Lunch", "Last date for 50% refund for dropped intersession course or withdrawal", "Last date for 25% refund for dropped intersession course or withdrawal", "Winter Break - No School (Horace Mann / Preschool)", "Women\'s Basketball at Washburn", "Men\'s Basketball at Washburn", "Winter Break - No School (Horace Mann / Preschool)", "Men\'s Basketball at Emporia State", "Winter Break - No School (Horace Mann / Preschool)", "Women\'s Basketball at Emporia State", "Winter Break - No School (Horace Mann / Preschool)", "Winter Break - No School (Horace Mann / Preschool)", "Winter Break - No School (Horace Mann / Preschool)", "Winter Break - No School (Horace Mann / Preschool)", "Student Payday", "Winter Break - No School (Horace Mann / Preschool)", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Observance- Kwanzaa", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Spoofhound Spotlight", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Observance- Kwanzaa", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Spoofhound Spotlight", "Observance- Kwanzaa", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Observance- Kwanzaa", "Winter Break - Campus closed", "Winter Break - No School (Horace Mann / Preschool / Infant & Toddler)", "Men\'s Basketball vs Clarke"], "Description": ["", "", "The Department of Fine and Performing Arts will host its annual winter art show and sale, in concurrence with its Empty Cups fundraiser. The art sale, which features a variety of art created by students in the foyer of the Fire Arts Building, located south of the Olive DeLuce Fine Arts Building. Patrons will find a variety of pottery, cups, bowls and lidded jars, originally designed T-shirts, jewelry, small edition prints and other handmade items.\nThe Empty Cups fundraiser, sponsored by Northwest’s Clay Club, is 11 a.m. to 2 p.m. Thursday, Dec. 1, and Friday, Dec. 2, on the second floor of the J.W. Jones Student Union. Patrons are invited to purchase handmade ceramic. A portion of Empty Cup proceeds are donated to the Maryville Ministry Center and Northwest’s Bearcat Food Pantry.\nContact Info\nVeronica Watkins\nwatkins@nwmissouri.edu\n(660) 562-1326\n", "The Department of Fine and Performing Arts will host its Empty Cups fundraiser in conjunction with its annual winter art show and sale.\nThe Empty Cups fundraiser, sponsored by Northwest’s Clay Club, is 11 a.m. to 2 p.m. Thursday, Dec. 1, and Friday, Dec. 2, on the second floor of the J.W. Jones Student Union. Patrons are invited to purchase handmade ceramic. A portion of Empty Cup proceeds are donated to the Maryville Ministry Center and Northwest’s Bearcat Food Pantry.\nThe art sale, which features a variety of art created by students in the foyer of the Fire Arts Building, located south of the Olive DeLuce Fine Arts Building. Patrons will find a variety of pottery, cups, bowls and lidded jars, originally designed T-shirts, jewelry, small edition prints and other handmade items.\nContact Info\nVeronica Watkins\nwatkins@nwmissouri.edu\n(660) 562-1326\n", "The Department of Fine and Performing Arts hosts its 47th Yuletide Feaste with an elegant royal meal and performances by the Madraliers chamber choir, the Recorder Consort and the Royale Brass Quintet.\nTickets are $38 and may be purchased by check or cash in the office of the Olive DeLuce Fine Arts Building. Credit or debit card orders may be placed online at www.nwmissouri.edu/finearts/music/yuletide.htm.\nAttendance is limited to 360 guests each evening, and all tickets are reserved. No tickets will be sold at the door.\nGuests celebrate and rediscover Christmas through the evening’s programs and festivities, highly stylized after old England. The menu, performances and decorations are reminiscent of 16th-century Tudor England.\nThe menu includes wassail, herbed cream cheese salami horns, rosemary spiced mixed nuts and cheese cubes, carved steamship au jus with horseradish sauce, slow roasted pork loin with winter fruit and port sauce, roasted root vegetables, green beans almondine, dinner rolls with cranberry butter and mini chocolate bundt cakes with pumpkin mousse.\nContact Info\nDepartment of Fine and Performing Arts\n(660) 562-1315\n", "Contact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "Contact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "The Department of Fine and Performing Arts will host its annual winter art show and sale, in concurrence with its Empty Cups fundraiser. The art sale, which features a variety of art created by students in the foyer of the Fire Arts Building, located south of the Olive DeLuce Fine Arts Building. Patrons will find a variety of pottery, cups, bowls and lidded jars, originally designed T-shirts, jewelry, small edition prints and other handmade items.\nThe Empty Cups fundraiser, sponsored by Northwest’s Clay Club, is 11 a.m. to 2 p.m. Thursday, Dec. 1, and Friday, Dec. 2, on the second floor of the J.W. Jones Student Union. Patrons are invited to purchase handmade ceramic. A portion of Empty Cup proceeds are donated to the Maryville Ministry Center and Northwest’s Bearcat Food Pantry.\nContact Info\nVeronica Watkins\nwatkins@nwmissouri.edu\n(660) 562-1326\n", "The Department of Fine and Performing Arts hosts its 47th Yuletide Feaste with an elegant royal meal and performances by the Madraliers chamber choir, the Recorder Consort and the Royale Brass Quintet.\nTickets are $38 and may be purchased by check or cash in the office of the Olive DeLuce Fine Arts Building. Credit or debit card orders may be placed online at www.nwmissouri.edu/finearts/music/yuletide.htm.\nAttendance is limited to 360 guests each evening, and all tickets are reserved. No tickets will be sold at the door.\nGuests celebrate and rediscover Christmas through the evening’s programs and festivities, highly stylized after old England. The menu, performances and decorations are reminiscent of 16th-century Tudor England.\nThe menu includes wassail, herbed cream cheese salami horns, rosemary spiced mixed nuts and cheese cubes, carved steamship au jus with horseradish sauce, slow roasted pork loin with winter fruit and port sauce, roasted root vegetables, green beans almondine, dinner rolls with cranberry butter and mini chocolate bundt cakes with pumpkin mousse.\nContact Info\nDepartment of Fine and Performing Arts\n(660) 562-1315\n", "The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.\nAn Admissions Overview will begin at 12:15 p.m. Sunday tours begin at 1:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.\nTo learn more, please visit the below link:\nhttp://www.nwmissouri.edu/admissions/campusvisits/saturday.htm\nContact Info\nKristin Little\nkristinl@nwmissouri.edu\n(660) 562-1587\n", "The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.\nAn Admissions Overview will begin at 1:15 p.m. Sunday tours begin at 2:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.\nTo learn more, please visit the below link:\nhttp://www.nwmissouri.edu/admissions/campusvisits/saturday.htm\nContact Info\nKristin Little\nkristinl@nwmissouri.edu\n(660) 562-1587\n", "Final Exam Week is December 5-9. Final exams end at noon on Friday of Final Exam Week.\nFor specific times, see the final exam schedule https://www.nwmissouri.edu/registrar/finals.htm\n", "Students may return textbooks to Textbook Services, located in the lower level of The Station on the Northwest campus in Maryville, during regular business hours between 8 a.m. and 5 p.m. Monday through Friday. All textbooks must be returned by 5 p.m. Friday, Dec. 9, to avoid late fees.\nStudents also may return textbooks at Northwest-Kansas City (Suite 400, 6889 N. Oak Trafficway, in Gladstone, Missouri) between 8 a.m. and 5 p.m. Monday through Friday. Call 816.272.4621 for more information. \nStudents who cannot return their textbooks at Northwest’s Maryville or Gladstone locations should use a UPS return label provided by the University to ship their books. To access the UPS return label, go to www.nwmissouri.edu/textbooks.htm and click Pickup and Return.\nTextbooks must arrive on the Northwest campus by Friday, Dec. 16. The Northwest-provided shipping label will be available until Tuesday, Dec. 13, to ensure the Dec. 16 deadline is met.\nAny textbooks returned after Dec. 16 will be assessed a late fee. Replacement costs for textbooks not returned also will be charged to the student. Shipping costs for packages shipped after Dec. 16 must be paid by the student and shipped to:\nTextbook Services\nNorthwest Missouri State University\n800 University Drive\nMaryville, MO 64468\nContact Info\nnwtxbk@nwmissouri.edu\n", "The Board of Regents People, Finance and Operations Committee will meet at 10 a.m. via Zoom at https://zoom.us/j/91590642467 or join by phone (Dial-In: +1 312.626.6799 | Meeting ID: 915 9064 2467).\nThe tentative meeting agenda is available at https://www.nwmissouri.edu/aboutus/regents/meetings/2022/Dec5pfoc.htm.\nThe People, Finance and Operations Committee is responsible for addressing matters pertaining to faculty and staff, culture, operations, policy and governance as well as audits, University policy, legal, governance, personnel, regulatory and risk management issues.\nContact Info\nDiane Hargrave\nDIANEH@nwmissouri.edu\n(660) 562-1120\n", "The Board of Regents Academic and Student Engagement Committee will meet at 1 p.m. via Zoom at https://zoom.us/j/99684379023 or join by phone (Dial-In: +1 312.626.6799 | Meeting ID: 915 9064 2467).\nThe tentative meeting agenda is available at https://www.nwmissouri.edu/aboutus/regents/meetings/2022/Dec5asec.htm.\nThe Academic and Student Engagement Committee is responsible for addressing matters pertaining to academics, student life and athletics as well as diversity and inclusion embedded within these areas.\nContact Info\nDiane Hargrave\nDIANEH@nwmissouri.edu\n(660) 562-1120\n", "Final Exam Week is December 5-9. Final exams end at noon on Friday of Final Exam Week.\nFor specific times, see the final exam schedule https://www.nwmissouri.edu/registrar/finals.htm\n", "Students may return textbooks to Textbook Services, located in the lower level of The Station on the Northwest campus in Maryville, during regular business hours between 8 a.m. and 5 p.m. Monday through Friday. All textbooks must be returned by 5 p.m. Friday, Dec. 9, to avoid late fees.\nStudents also may return textbooks at Northwest-Kansas City (Suite 400, 6889 N. Oak Trafficway, in Gladstone, Missouri) between 8 a.m. and 5 p.m. Monday through Friday. Call 816.272.4621 for more information. \nStudents who cannot return their textbooks at Northwest’s Maryville or Gladstone locations should use a UPS return label provided by the University to ship their books. To access the UPS return label, go to www.nwmissouri.edu/textbooks.htm and click Pickup and Return.\nTextbooks must arrive on the Northwest campus by Friday, Dec. 16. The Northwest-provided shipping label will be available until Tuesday, Dec. 13, to ensure the Dec. 16 deadline is met.\nAny textbooks returned after Dec. 16 will be assessed a late fee. Replacement costs for textbooks not returned also will be charged to the student. Shipping costs for packages shipped after Dec. 16 must be paid by the student and shipped to:\nTextbook Services\nNorthwest Missouri State University\n800 University Drive\nMaryville, MO 64468\nContact Info\nnwtxbk@nwmissouri.edu\n", "Faculty and staff are invited to take a break and enjoy cookies and cocoa with colleagues. Hosted by Staff Council, cookies and cocoa will be distributed at Facility Services, the Olive DeLuce Fine Arts Building and the Administration Building.\nTimes:\n6 a.m.: Facility Services\n2 - 3:30 p.m.: Administration Building, Facility Services and DeLuce Fine Arts Building\n5 p.m.: Facility Services\nContact Info\nKala Dixon\nkalad@nwmssouri.edu\n(660) 562-1580\n", "Final Exam Week is December 5-9. Final exams end at noon on Friday of Final Exam Week.\nFor specific times, see the final exam schedule https://www.nwmissouri.edu/registrar/finals.htm\n", "Students may return textbooks to Textbook Services, located in the lower level of The Station on the Northwest campus in Maryville, during regular business hours between 8 a.m. and 5 p.m. Monday through Friday. All textbooks must be returned by 5 p.m. Friday, Dec. 9, to avoid late fees.\nStudents also may return textbooks at Northwest-Kansas City (Suite 400, 6889 N. Oak Trafficway, in Gladstone, Missouri) between 8 a.m. and 5 p.m. Monday through Friday. Call 816.272.4621 for more information. \nStudents who cannot return their textbooks at Northwest’s Maryville or Gladstone locations should use a UPS return label provided by the University to ship their books. To access the UPS return label, go to www.nwmissouri.edu/textbooks.htm and click Pickup and Return.\nTextbooks must arrive on the Northwest campus by Friday, Dec. 16. The Northwest-provided shipping label will be available until Tuesday, Dec. 13, to ensure the Dec. 16 deadline is met.\nAny textbooks returned after Dec. 16 will be assessed a late fee. Replacement costs for textbooks not returned also will be charged to the student. Shipping costs for packages shipped after Dec. 16 must be paid by the student and shipped to:\nTextbook Services\nNorthwest Missouri State University\n800 University Drive\nMaryville, MO 64468\nContact Info\nnwtxbk@nwmissouri.edu\n", "Final Exam Week is December 5-9. Final exams end at noon on Friday of Final Exam Week.\nFor specific times, see the final exam schedule https://www.nwmissouri.edu/registrar/finals.htm\n", "Students may return textbooks to Textbook Services, located in the lower level of The Station on the Northwest campus in Maryville, during regular business hours between 8 a.m. and 5 p.m. Monday through Friday. All textbooks must be returned by 5 p.m. Friday, Dec. 9, to avoid late fees.\nStudents also may return textbooks at Northwest-Kansas City (Suite 400, 6889 N. Oak Trafficway, in Gladstone, Missouri) between 8 a.m. and 5 p.m. Monday through Friday. Call 816.272.4621 for more information. \nStudents who cannot return their textbooks at Northwest’s Maryville or Gladstone locations should use a UPS return label provided by the University to ship their books. To access the UPS return label, go to www.nwmissouri.edu/textbooks.htm and click Pickup and Return.\nTextbooks must arrive on the Northwest campus by Friday, Dec. 16. The Northwest-provided shipping label will be available until Tuesday, Dec. 13, to ensure the Dec. 16 deadline is met.\nAny textbooks returned after Dec. 16 will be assessed a late fee. Replacement costs for textbooks not returned also will be charged to the student. Shipping costs for packages shipped after Dec. 16 must be paid by the student and shipped to:\nTextbook Services\nNorthwest Missouri State University\n800 University Drive\nMaryville, MO 64468\nContact Info\nnwtxbk@nwmissouri.edu\n", "The Board of Regents will meet at 9 a.m. in the Student Union Boardroom.\nContact Info\nDiane Hargrave\ndianeh@nwmissouri.edu\n(660) 562-1120\n", "Winter Northwest graduates are invited to Northwest Grad Fest 2022, a tradition that celebrates students\' success and accomplishments and officially welcomes our graduates into the Northwest alumni community.\nEnjoy a free beer, snacks, cap decorating and other free Northwest swag.\nWristbands for this event can be picked up with your cap and gown in the Administration Building.\nContact Info\nKaley Coulter, University Event Coordinator\nkcoulter@nwmissouri.edu\n(660) 562-1143\n", "Final Exam Week is December 5-9. Final exams end at noon on Friday of Final Exam Week.\nFor specific times, see the final exam schedule https://www.nwmissouri.edu/registrar/finals.htm\n", "Students may return textbooks to Textbook Services, located in the lower level of The Station on the Northwest campus in Maryville, during regular business hours between 8 a.m. and 5 p.m. Monday through Friday. All textbooks must be returned by 5 p.m. Friday, Dec. 9, to avoid late fees.\nStudents also may return textbooks at Northwest-Kansas City (Suite 400, 6889 N. Oak Trafficway, in Gladstone, Missouri) between 8 a.m. and 5 p.m. Monday through Friday. Call 816.272.4621 for more information. \nStudents who cannot return their textbooks at Northwest’s Maryville or Gladstone locations should use a UPS return label provided by the University to ship their books. To access the UPS return label, go to www.nwmissouri.edu/textbooks.htm and click Pickup and Return.\nTextbooks must arrive on the Northwest campus by Friday, Dec. 16. The Northwest-provided shipping label will be available until Tuesday, Dec. 13, to ensure the Dec. 16 deadline is met.\nAny textbooks returned after Dec. 16 will be assessed a late fee. Replacement costs for textbooks not returned also will be charged to the student. Shipping costs for packages shipped after Dec. 16 must be paid by the student and shipped to:\nTextbook Services\nNorthwest Missouri State University\n800 University Drive\nMaryville, MO 64468\nContact Info\nnwtxbk@nwmissouri.edu\n", "Northwest will celebrate the achievements of its most recent graduating students during winter commencement ceremonies in Bearcat Arena.\nNorthwest will host three ceremonies, beginning at 10 a.m., 2 p.m. and 6 p.m. in Bearcat Arena at the Lamkin Activity Center on the University campus. To accommodate guests who cannot attend, Northwest also offers a live online stream of each ceremony at www.nwmissouri.edu/live.\nGraduates participating in commencement ceremonies may pick up caps and gowns between 9 a.m. and 4 p.m. Monday, Dec. 5, through Wednesday, Dec. 7, and 9 a.m. to 1 p.m. Thursday, Dec. 8, on the first floor of the Administration Building. Caps and gowns also will be available one hour prior to each ceremony in the Student Rec Center at Lamkin Activity Center.\nNorthwest also encourages graduates, families and friends to interact with Northwest social media before, during and after the commencement ceremonies by using the hashtag #NWGrad.\nFor more details about commencement ceremonies at Northwest, visit www.nwmissouri.edu/graduation/.\nContact Info\nKaley Coulter\ncommencement@nwmissouri.edu\n", "The Bearcat women face off against Nebraska-Kearney at home. Tipoff is at 1:30 p.m.\nContact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "The Bearcat men face off against Nebraska-Kearney at home. Tipoff is at 3:30 p.m.\nContact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "The Bearcat women face off against Fort Hays State at home. Tipoff is at 1:30 p.m.\nContact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "Alpha Psi Omega, Northwest’s honorary theatre fraternity, presents its annual children\'s show at 2 p.m. in the Studio Theatre at the Ron Houston Center for the Performing Arts. The play is free and open to the public with a donation of non-perishable food items for local ministry centers and food banks.\nWill justice be served in this hilarious fairy-tale courtroom play packed with characters we all know and love? It’s up to the audience, which serves as the jury and determines how the play ends! Goldilocks is the defendant on trial for breaking and entering. The plaintiffs are — you guessed it — the three bears. As their lawyers Henny Penny and Tom Thumb go toe-to-toe hoping to prove their respective clients’ cases, other fairy tale characters are called to testify as witnesses, including Hansel and Gretel, Jack and Cow, and Granny. Even the Big Bad Wolf takes the stand, but can any of these witnesses be trusted themselves? Is Goldilocks guilty or innocent? With multiple endings to cover each possible outcome, your audience gets to decide her ultimate fate.\nContact Info\nHaley Kernes\nS535642@nwmissouri.edu\n", "The Bearcat men face off against Fort Hays State at home. Tipoff is at 3:30 p.m.\nContact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "", "Contact Info\nOffice of Student Accounts\ncashier@nwmissouri.edu\n(660) 562-1578\n", "", "Contact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "Contact Info\nOffice of Student Accounts\ncashier@nwmissouri.edu\n(660) 562-1578\n", "All Northwest employees are invited to the annual Employee Recognition event. Employees may choose to attend a 5:30 a.m. breakfast or noon dinner, both at the J.W. Jones Student Union Ballroom.\nPlease join us to recognize the hard work and dedication of all our employees as well as those who have reached milestone years of service.\nContact Info\nHuman Resources\nhrwebpg@nwmissouri.edu\n(660) 562-1127\n", "All Northwest employees are invited to the annual Employee Recognition event. Employees may choose to attend a 5:30 a.m. breakfast or noon dinner, both at the J.W. Jones Student Union Ballroom.\nPlease join us to recognize the hard work and dedication of all our employees as well as those who have reached milestone years of service.\nContact Info\nHuman Resources\nhrwebpg@nwmissouri.edu\n(660) 562-1127\n", "Contact Info\nOffice of Student Accounts\ncashier@nwmissouri.edu\n(660) 562-1578\n", "Contact Info\nOffice of Student Accounts\ncashier@nwmissouri.edu\n(660) 562-1578\n", "Thursday, December 22, 2022\n", "Contact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "Contact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "Thursday, December 22, 2022\n", "Contact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "Thursday, December 22, 2022\n", "Contact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n", "Thursday, December 22, 2022\n", "Thursday, December 22, 2022\n", "Thursday, December 22, 2022\n", "Thursday, December 22, 2022\n", "Contact Info\n(660) 562-1108\n", "Thursday, December 22, 2022\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Sunday, January 1, 2023\nKwanzaa is a weeklong celebration held in the United States that honors African heritage in African-American culture. Kwanzaa is observed from December 26th to January 1st, and culminates in gift giving and a big feast. Kwanzaa is a celebration of community, family and culture, established as a means to help African Americans reconnect with their African roots and heritage.\nContact Info\nOffice of Diversity and Inclusion\ndiversity@nwmissouri.edu\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Spoofhound Spotlight is a monthly discussion with Maryville R2 Superintendent Logan Lightfoot and others in the district about everything Spoofhounds. Airs on the last Monday of the month at 9:00 a.m. on KXCV-KRNW - your public radio station. The program re-airs at 6:00 p.m. the same day.\nFind us here:\nRADIO DIAL: 90.5 & 88.9\nWEB ADDRESS: www.kxcv.org\nAPP: Bearcat Public Media app\nContact Info\nJeremy Werner\njwerner@nwmissouri.edu\n(660) 562-1163\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Sunday, January 1, 2023\nKwanzaa is a weeklong celebration held in the United States that honors African heritage in African-American culture. Kwanzaa is observed from December 26th to January 1st, and culminates in gift giving and a big feast. Kwanzaa is a celebration of community, family and culture, established as a means to help African Americans reconnect with their African roots and heritage.\nContact Info\nOffice of Diversity and Inclusion\ndiversity@nwmissouri.edu\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Spoofhound Spotlight is a monthly discussion with Maryville R2 Superintendent Logan Lightfoot and others in the district about everything Spoofhounds. Airs on the last Monday of the month at 9:00 a.m. on KXCV-KRNW - your public radio station. The program re-airs at 6:00 p.m. the same day.\nFind us here:\nRADIO DIAL: 90.5 & 88.9\nWEB ADDRESS: www.kxcv.org\nAPP: Bearcat Public Media app\nContact Info\nJeremy Werner\njwerner@nwmissouri.edu\n(660) 562-1163\n", "Sunday, January 1, 2023\nKwanzaa is a weeklong celebration held in the United States that honors African heritage in African-American culture. Kwanzaa is observed from December 26th to January 1st, and culminates in gift giving and a big feast. Kwanzaa is a celebration of community, family and culture, established as a means to help African Americans reconnect with their African roots and heritage.\nContact Info\nOffice of Diversity and Inclusion\ndiversity@nwmissouri.edu\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "Sunday, January 1, 2023\nKwanzaa is a weeklong celebration held in the United States that honors African heritage in African-American culture. Kwanzaa is observed from December 26th to January 1st, and culminates in gift giving and a big feast. Kwanzaa is a celebration of community, family and culture, established as a means to help African Americans reconnect with their African roots and heritage.\nContact Info\nOffice of Diversity and Inclusion\ndiversity@nwmissouri.edu\n", "Monday, January 2, 2023\nNorthwest\'s winter break is Dec. 23 through Jan. 2. All campus offices are closed during this time.\nCampus offices reopen Jan. 3.\n", "Monday, January 2, 2023\n", "The Bearcat men meet Clarke at Bearcat Arena. Tipoff is 2 p.m.\nContact Info\nRyan Milke\nrmilke@nwmissouri.edu\n(660) 562-1581\n"], "Location": ["", "", "Fire Arts Building\n", "J.W. Jones Student Union, Second floor\n", "J.W. Jones Student Union, Ballroom\n", "Pittsburg, KS\n", "Pittsburg, KS\n", "Fire Arts Building\n", "J.W. Jones Student Union, Ballroom\n", "J.W. Jones Student Union, 3rd Floor\n", "J.W. Jones Student Union, 3rd Floor\n", "", "The Station, Textbook Services\n", "Zoom\n", "Zoom\n", "", "The Station, Textbook Services\n", "", "", "The Station, Textbook Services\n", "", "The Station, Textbook Services\n", "J.W. Jones Student Union, Boardroom\n800 University Drive, Maryville, MO\n", "Student Rec Center\n800 University Drive, Maryville, MO\n", "", "The Station, Textbook Services\n", "Lamkin Activity Center, Bearcat Arena\n", "Lamkin Activity Center, Bearcat Arena\n", "Lamkin Activity Center, Bearcat Arena\n", "Lamkin Activity Center, Bearcat Arena\n", "Ron Houston Center for the Performing Arts, Studio Theatre\n", "Lamkin Activity Center, Bearcat Arena\n", "", "", "", "Lebanon, IL\n", "", "J.W. Jones Student Union, Ballroom\n", "J.W. Jones Student Union, Ballroom\n", "", "", "Horace Mann Laboratory School\n", "Topeka, KS\n", "Topeka, KS\n", "Horace Mann Laboratory School\n", "Emporia, KS\n", "Horace Mann Laboratory School\n", "Emporia, KS\n", "Horace Mann Laboratory School\n", "Horace Mann Laboratory School\n", "Horace Mann Laboratory School\n", "Horace Mann Laboratory School\n", "", "Horace Mann Laboratory School\n", "", "Horace Mann Laboratory School\n", "", "Horace Mann Laboratory School\n", "", "Horace Mann Laboratory School\n", "", "", "Horace Mann Laboratory School\n", "", "", "Horace Mann Laboratory School\n", "", "Horace Mann Laboratory School\n", "", "Horace Mann Laboratory School\n", "", "", "Horace Mann Laboratory School\n", "", "", "", "Horace Mann Laboratory School\n", "", "", "Horace Mann Laboratory School\n", "Lamkin Activity Center, Bearcat Arena\n"]]

}
