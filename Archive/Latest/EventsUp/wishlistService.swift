//
//  wishlistService.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 2/5/23.
//

import Foundation
import FirebaseFirestore

class wishlistService {
    let database = Firestore.firestore()

    func get(collectionID: String, handler: @escaping ([WishList]) -> Void) {
        database.collection("WishList")
            .addSnapshotListener { querySnapshot, err in
                if let error = err {
                    print(error)
                    handler([])
                } else {
                    handler(WishList.build(from: querySnapshot?.documents ?? []))
                }
            }
    }
}
