//
//  SceneDelegate.swift
//  EventsUp
//
//  Created by Gundu,Naveen Kumar on 9/30/22.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth
import Firebase

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var db: Firestore!
    var window: UIWindow?
    var startTime:Int!
    var endTime:Int!
//var test:boolean = false
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        print("scence")
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        print("didDisconnect")
    }
    

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("sceneDidBecomeActive")
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        endTime = minutes
        print("end time == ",endTime,startTime)
        print("user details ",Auth.auth().currentUser)

        if(startTime != nil && endTime != nil){
            var i = endTime - startTime
            print("vale of i = ",i)
            if Double(i) >= 0.25 && Auth.auth().currentUser != nil{
               // self.performSegue(withIdentifier: "logoutSegue", sender: (Any).self)
               // ConstantsEventsUP.yourVariable = true
                do {
                try Auth.auth().signOut()
                //    self.performSegue(withIdentifier: "logoutSegue", sender: Any?.self)
                } catch let signOutError as NSError {
                  print("Error signing out: %@", signOutError)
                }
                //print("in scene ConstantsEventsUP.yourVariable --- ",ConstantsEventsUP.yourVariable)
               closeApp()
                // exit(0)
            }
        }
       
    }
    func closeApp() {
   //     UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
//        print("sceneWillEnterForeground")
//        let date = Date()
//        let calendar = Calendar.current
//        let hour = calendar.component(.hour, from: date)
//        let minutes = calendar.component(.minute, from: date)
//        endTime = minutes
//        print("end time == ",endTime,startTime)
//        print("user details ",Auth.auth().currentUser)
//
//        if(startTime != nil && endTime != nil){
//            var i = endTime - startTime
//            print("vale of i = ",i)
//            if Double(i) >= 0.25 && Auth.auth().currentUser != nil{
//                exit(0)
//            }
//        }
       
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
      
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        print("sceneDidEnterBackground",Calendar.current.self)
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        startTime = minutes
        print("start time == ",startTime)
    }

}

