//
//  UserList.swift
//  EventsUp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 2/1/23.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    var id: ObjectIdentifier
    var username : String
    var phone : String
    var password : String
    var lname: String
    var fname: String
}
