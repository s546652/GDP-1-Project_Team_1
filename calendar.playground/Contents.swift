import UIKit
import Foundation

struct Post:Codable{
    let data: String
}
var l:Array<Substring>=[]
var d:Dictionary<String,[String]>=["Event Name":[], "Location":[],"Date and Time":[], "Description":[]]

func callAPI(){
    guard let url = URL(string: "http://127.0.0.1:5000/") else{
        return
    }

    let task = URLSession.shared.dataTask(with: url){
        data, response, error in

        if let data = data, var string = String(data: data, encoding: .utf8){
            string=string.replacingOccurrences(of: "<br>", with: "\n")
            l=string.split(separator:"\n")
        }
        var i=0;var s=""
        while(i<l.count){
            s=""
            if(i<l.count){
                d["Event Name"]?.append(String(l[i]));i+=1
            }
            while(i<l.count && !l[i].contains("2022")){
                s+=l[i]+"\n";i+=1
            }
            d["Location"]?.append(s)
            if(i<l.count){
                d["Date and Time"]?.append(String(l[i]));i+=1
            }
            s=""
            while(i<l.count && !l[i].contains("Calendars:")){
                s+=l[i]+"\n";i+=1
            }
            d["Description"]?.append(s)
            i+=1
        }
        print(d)
    }
    task.resume()
}
