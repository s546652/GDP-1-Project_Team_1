//
//  EventsDetailListViewController.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/6/22.
//

import UIKit

class EventsDetailListViewController: UIViewController {

    var testdata=""
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = testdata
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
