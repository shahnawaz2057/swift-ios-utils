import Foundation

public struct Validator {
    
    public static func validEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    public static func printHello() {
        print("Hello there...")
    }
    
    public static func isEmail(email: String) -> Bool {
        
        do {
            let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}", options: .caseInsensitive)
            return regex.firstMatch(in: email, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, email.count)) != nil
        } catch {
            return false
        }
    }
    
    public static func isAlphanumeric(str: String) -> Bool {
        
        return !str.isEmpty && str.range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
    
    //validate Password
    public static func isValidPassword(password: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: "^[a-zA-Z_0-9\\-_,;.:#+*?=!§$%&/()@]+$", options: .caseInsensitive)
            if(regex.firstMatch(in: password, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, password.count)) != nil){
                
                if(password.count>=8 && password.count<=20){
                    return true
                }else{
                    return false
                }
            }else{
                return false
            }
        } catch {
            return false
        }
    }
    
    public static func isPhoneNumber(phoneNumber: String) -> Bool {
        let charcter  = NSCharacterSet(charactersIn: "+0123456789").inverted
        var filtered:String!
        let inputString:NSArray = phoneNumber.components(separatedBy: charcter) as NSArray
        filtered = inputString.componentsJoined(by: "") as String
        return  phoneNumber == filtered
    }
    
}
