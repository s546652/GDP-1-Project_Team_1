//
//  CalendarData.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 2/19/23.
//

import Foundation
import UIKit
import FirebaseFirestore

class CalendarData {

    var s:String=""
    

    func eventsData() -> String{
        let db = Firestore.firestore()
        let d = db.collection("data").document("events")
        d.getDocument{ [weak self] (document, error) in
            guard let strongSelf = self else {return}
            
                guard error == nil else {
                    return
                }
                if let document = document, document.exists {
                    let data = document.data()
                    if let data = data {
                        print(data)
                        if let data = data["data"] as? String{
                            
                            
                        }
                        print(strongSelf.s)
                    }
                }
        }
        
        return self.s
    }
}
