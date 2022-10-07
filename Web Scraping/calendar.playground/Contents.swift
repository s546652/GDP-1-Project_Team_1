import UIKit
import Foundation

struct Post:Codable{
    let data: String
}

func callAPI(){
    guard let url = URL(string: "http://127.0.0.1:5000/") else{
        return
    }


    let task = URLSession.shared.dataTask(with: url){
        data, response, error in
        
        if let data = data, let string = String(data: data, encoding: .utf8){
            print(string)
        }
    }

    task.resume()
}

callAPI()
var myDate:NSDateComponents = NSDateComponents()
    myDate.year = 2015
    myDate.month = 04
    myDate.day = 20
    myDate.hour = 12
    myDate.minute = 38
    myDate.timeZone = NSTimeZone.systemTimeZone()

    var calendar:NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
    var date:NSDate = calendar.dateFromComponents(myDate)!

    var notification:UILocalNotification = UILocalNotification()
    notification.category = "First Category"
    notification.alertBody = "Hi, I'm a notification"
    notification.fireDate = date

    UIApplication.sharedApplication().scheduleLocalNotification(notification)
