//
//  EventsDetailListViewController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/6/22.
//

import UIKit
@available(iOS 16.0, *)
class EventsDetailListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        //return eventsArray.capacity
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tabelViewOutlet.dequeueReusableCell(withIdentifier: "reuseableCell", for: indexPath)
//        print(eventsArray.capacity)
//        print(eventsArray[0].eventName)
//        print(testArray[0].eventDate)
        cell.textLabel?.text = "t"
        
        return cell
    }
   

//    var event:Event!
    var testdata=""
    
    //var events = eventsArray
    
    @IBOutlet weak var tabelViewOutlet: UITableView!
   // @IBOutlet weak var labelOutlet: UILabel!
   
   // var evnts = [Event]()

    

    @IBOutlet weak var cellOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(d)
        print("test")
       // callAPI()
        callAPI()
//        for e in eventsArray{
//        }
        tabelViewOutlet.delegate = self
        tabelViewOutlet .dataSource = self
        
        // Do any additional setup after loading the view.
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
