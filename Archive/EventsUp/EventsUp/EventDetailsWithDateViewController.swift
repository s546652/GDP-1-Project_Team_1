//
//  EventDetailsWithDateViewController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/14/22.
//

import UIKit

class EventDetailsWithDateViewController: UIViewController {
    
    var event:String!
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(event)
        textViewOutlet.text = event!
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
