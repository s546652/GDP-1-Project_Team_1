//
//  EventsListController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 10/2/22.
//

import UIKit

class event{
    var eName: String?
    var eData: String?
    
    init(ename: String, edata: String) {
        self.eName = ename
        self.eData = edata
    }
}

class EventsListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("test")
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reuseableCell", for: indexPath)
        
        //populate cell
        
        cell.textLabel?.text = events[indexPath.row].eName
        
        //return cell
        return cell
    }
    var events = [event]()
    
    @IBOutlet weak var dateOutlet: UILabel!
    
    
    @IBOutlet weak var eventOneOutlet: UIButton!
    
    @IBOutlet weak var eventTwoOutlet: UIButton!
    
    @IBOutlet weak var eventThreeOutlet: UIButton!
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        let p1 = event(ename: "Late Night At Rec", edata: "10/10/2022")
        events.append(p1)
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func eventOneButton(_ sender: Any) {
        
    }
    
    @IBAction func eventTwoButton(_ sender: Any) {
    }
    
    @IBAction func eventThreeButton(_ sender: Any) {
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
