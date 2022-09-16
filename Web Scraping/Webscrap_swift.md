import UIKit

let url = NSURL(string: "http://calendar.nwmissouri.edu")

let task = URLSession.shared.dataTask(with: (url?.absoluteURL)!){(data,response,error) in
    print(NSString(data:data!, encoding: String.Encoding.utf8.rawValue))
}

task.resume()
