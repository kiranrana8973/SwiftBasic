
import Foundation

// To return a multiple values like records in flutter

var username : String = "Kiran"
var isNewUser : Bool = true
var userIsPremium : Bool = true

func getUsername() -> String{
    return username
}

func getIsNewUser() -> Bool {
    return isNewUser
}

func  getUserNameAndNewUser() -> (String,Bool) {
    return (getUsername(),getIsNewUser())
}

func  getUserNameAndNewUser2() -> (name: String, isNewUser: Bool) {
    return (getUsername(),getIsNewUser())
}

var useranameAndNewUser : (String,Bool) = getUserNameAndNewUser()

print(useranameAndNewUser)
print(useranameAndNewUser.0)
print(useranameAndNewUser.1)

var username23  = getUserNameAndNewUser2()

print(username23.name)
print(username23.isNewUser)

