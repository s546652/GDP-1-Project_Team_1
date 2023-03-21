//
//  AppDelegate.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 9/30/22.
//

import UIKit
import Firebase


import SQLite3
import SwiftUI


var dbQueue:OpaquePointer?

var dbURL = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
 
    @StateObject var dataManager = DataManager()
    override init() {
       FirebaseApp.configure()
        
       // SceneDelegate().sceneDidEnterBackground(UIScene.didEnterBackgroundNotification)
   }

   
//    var body: some Scene{
//        WindowGroup {
//            WishListView()
//                .environmentObject(DataManager())
//        }
//    }
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("inside the unit method",application.applicationState)
        self.registerLocalNotification()
        let state = UIApplication.shared.applicationState
        print("state of the app ",state)
            if state == .background {
                print("App in Background",TimeInterval.self)
  
            }
        else if state == .active{
               
            }

        return true
    }

    

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        print("inside the unit method",application.applicationState)

        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        print("inside the unit method",application.applicationState)

    }
    func registerLocalNotification() {
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            // Enable or disable features based on authorization.
            if error != nil {
                print("Request authorization failed!")
            } else {
                print("Request authorization succeeded!")
            }
        }
    }
    //Handle Notification Center Delegate methods
        func userNotificationCenter(_ center: UNUserNotificationCenter,
                                    willPresent notification: UNNotification,
                                    withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            completionHandler([.alert, .sound])
        }
    
//    func createAndOpenDatabase() -> OpaquePointer? {
//        var db: OpaquePointer?
//
//        let url = NSURL(fileURLWithPath: dbURL)
//
//        if let pathComponenent = url.appendingPathComponent("EventsUp.sqlite")
//        {
//            let filePath = pathComponenent.path
//            if sqlite3_open(filePath, &db) == SQLITE_OK
//            {
//                print("Succesfully opened the Database at \(filePath)")
//
//                return db;
//            }
//            else{
//
//                print("Could not open the Database")
//
//            }
//
//
//        }
//        else{
//
//            print("File path is not available")
//        }
//
//        return db;
//    }
//
//    func createAttendeeTable() -> Bool {
//        var aRetval : Bool = false
//
//        /*let createAttendees = sqlite3_exec(dbQueue, "Create table if not exists E_ATTENDEES(Attendee_Id INTEGER PRIMARY KEY AUTOINCREMENT, Password TEXT NOT NULL, SID TEXT, Name TEXT NOT NULL, FName TEXT NOT NULL, EmailId TEXT NOT NULL  UNIQUE, PhoneNUmber TEXT NOT NULL UNIQUE, DOB TEXT NOT NULL)", nil, nil, nil)*/
//
//        //removed sidv removed id
//
//        let createAttendees = sqlite3_exec(dbQueue, "Create table if not exists E_ATTENDEES( Password TEXT NOT NULL,  Name TEXT NOT NULL, FName TEXT NOT NULL, EmailId TEXT NOT NULL  UNIQUE, PhoneNUmber TEXT NOT NULL UNIQUE, DOB TEXT NOT NULL)", nil, nil, nil)
//
//
//        if(createAttendees != SQLITE_OK){
//
//            print("Not able to create table")
//            aRetval = false
//
//        }
//        else{
//
//            aRetval = true
//        }
//
//        return aRetval
//
//    }
//

}

