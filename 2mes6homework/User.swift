//
//  User.swift
//  2mes6homework
//
//  Created by Нуридин Сафаралиев on 2/11/22.
//

import Foundation

enum CountryCode: Int{
    case Австралия = 61
    case Кыргызстан = 996
    case США = 1
    case Россия = 7
}

class User{
    
    var name: String = readLine()!
    var surname: String = readLine()!
    var country: String = readLine()!
    var phone: Int = Int(readLine()!)!
    
    
    
    func info(){
        var phoneCode: Int
        
        switch country{
            case "Кыргызстан": phoneCode = CountryCode.Кыргызстан.rawValue
            case "США": phoneCode = CountryCode.США.rawValue
            case "Россия": phoneCode = CountryCode.Россия.rawValue
            case "Австралия": phoneCode = CountryCode.Австралия.rawValue
        default:
            phoneCode = 101010
        }
        
        print("\(name) \(surname), +\(phoneCode) \(phone)")
    }
}

