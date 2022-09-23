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
