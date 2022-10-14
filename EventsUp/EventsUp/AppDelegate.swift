//
//  AppDelegate.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 9/30/22.
//

import UIKit
import SQLite3

var dbURL = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func createAndOpenDatabase() -> OpaquePointer? {
        var db: OpaquePointer?
        
        let url = NSURL(fileURLWithPath: dbURL)
        
        if let pathComponenent = url.appendingPathComponent("EventsUp.sqlite")
        {
            let filePath = pathComponenent.path
            if sqlite3_open(filePath, &db) == SQLITE_OK
            {
                print("Succesfully opened the Database at \(filePath)")
                
                return db;
            }
            else{
                
                print("Could not open the Database")
                
            }
            
            
        }
        else{
            
            print("File path is not available")
        }
        
        return db;
    }


}

