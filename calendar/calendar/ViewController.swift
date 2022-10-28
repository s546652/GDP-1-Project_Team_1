//
//  ViewController.swift
//  calendar
//
//  Created by Mallypally,Sreyas Reddy on 10/28/22.
//

import UIKit
import Foundation
import MySQLDriver

class ViewController: UIViewController {

    let con = MySQL.Connection()

    override func viewDidLoad() {
        super.viewDidLoad()

        let calendar = Calendar.current

        let now = Date()
        let date = calendar.date(
            bySettingHour: 0,
            minute: 31,
            second: 0,
            of: now)!

        let timer = Timer(fireAt: date, interval: 0, target: self, selector: #selector(runCode), userInfo: nil, repeats: false)

        RunLoop.main.add(timer, forMode: RunLoop.Mode.common)
    }

    @objc func runCode() {
        print("Do whatever here")
    }
}

