//
//  DataManager.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 1/31/23.
//

import SwiftUI

import Firebase

class DataManager: ObservableObject {
    @Published var records: [WishList] = []
    
    init() {
        fetchEvents()
    }
    
    func fetchEvents() {
        records.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("WishList")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let eventName = data["EventName"] as? String ?? ""
                    let eventdate = data["EventName"] as? String ?? ""
                    let user = data["User"] as? String ?? ""
                    let userId = data["UserId"] as? String ?? ""
                    
                   // let wish = WishList(id:"" ,EventName: eventName, EventDate: eventdate, user: user, userId: userId)
                   // self.records.append(wish)
                    
                }
            }
        }
    }
}
