//
//  wishlistFirebase.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 2/5/23.
//

import Foundation
import FirebaseFirestore

extension WishList {
  //  static func builds(from collections: Query)
    static func build(from documents: [QueryDocumentSnapshot]) -> [WishList] {
        var wishlistRecords = [WishList]()
        print(documents)
        for document in documents {
            wishlistRecords.append(WishList(EventName: document["EventName"] as? String ?? "",
                                            EventDate: document["EventDate"] as? String ?? "",
                                            user: document["user"] as? String ?? "",
                                            userId: document["userId"] as? String ?? ""))
        }
        print("dtat")
        print(wishlistRecords)
        return wishlistRecords
    }
}
