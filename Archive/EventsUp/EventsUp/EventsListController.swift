//
//  EventsListController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 10/2/22.
//

import UIKit

class EventsListController: UIViewController {
    
    @IBOutlet weak var dateOutlet: UILabel!
    
    
    @IBOutlet weak var eventOneOutlet: UIButton!
    
    @IBOutlet weak var eventTwoOutlet: UIButton!
    
    @IBOutlet weak var eventThreeOutlet: UIButton!
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
