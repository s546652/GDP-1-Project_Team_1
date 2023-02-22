//
//  EventsDetailVC.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 2/21/23.
//

import UIKit

class EventsDetailVC: UIViewController {

    var date = ""
    var name = ""
    var desc = ""
    @IBOutlet weak var DateOutlet: UITextView!
    
    
    
    
    @IBOutlet weak var EventNameOutlet: UITextView!
    
    @IBOutlet weak var EventDescOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
print(date,name,desc)
        DateOutlet.text = date
        EventNameOutlet.text = name
        EventDescOutlet.text = desc
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
