import UIKit
import MariaDBKit

let client = MariaDBClient()

do {
    try client.connect("sqlprostudio-mysql.csyg8tkobue6.us-west-2.rds.amazonaws.com", username: "sqlprostudio-ro", password: "password123", database: "northwind")

    var error : NSError?
    let results = client.executeQuery("SHOW TABLES;", error: &error)

    if let theError = error {
        print(theError)
        return
    }

    while(results.next(&error)) {
        print(results.object(forColumnIndex: 0))
    }
}
catch {
    print(error)
}
