//
//  Extention.swift
//  EventsUp
//
//  Created by Nagulapally,Madhuri on 4/17/23.
//

import Foundation


extension String {
    
    func isContainNumeric() -> Bool {
        let numbersRange = self.rangeOfCharacter(from: .decimalDigits)
        return numbersRange != nil
    }
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
    func isValidPassword() -> Bool {
        return self.count >= 8
    }
    func isValidPhone() -> Bool {
        return self.count == 10
    }
}
