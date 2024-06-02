//: [Previous](@previous)

import Foundation

var userIsNew: Bool? = true
var userDidCompleteBoarding: Bool? = false
var userFavMovies:  String? = nil

// We simply cannot pass optional value to mandatory value
// To solve this problem we use three methods

print(checkIfUserIsNew())

// 1. Using if-let
// This is the usecase where we want to check all the 3 variable
func checkIfUserIsNew()->Bool{
//    if let newUser = userIsNew, let didCompleteBoarding = userDidCompleteBoarding, let favMovies = userFavMovies {
//        return getUserStatus(userIsNew: newUser, userDidCompleteBoarding: userDidCompleteBoarding, userFavMovies: userFavMovies)
//    }else{
//        return false
//    }
    
    // In new version of iOS we don't need to use a variable
    if let userIsNew, let userDidCompleteBoarding, let userFavMovies {
        return getUserStatus(
                        userIsNew: userIsNew,
                        userDidCompleteBoarding: userDidCompleteBoarding,
                        userFavMovies: userFavMovies)
    }else{
        return false
    }
}

print(checkIfUserIsNew2())
// 2. Using guard

func checkIfUserIsNew2() -> Bool{
    guard let userIsNew, let userDidCompleteBoarding, let userFavMovies else{
        return false
    }
    
    return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteBoarding: userDidCompleteBoarding,
                    userFavMovies: userFavMovies)
}

print(checkIfUserIsNew3())
// This is the usecase where we want to check 2 variables and 1 seperately
func checkIfUserIsNew3()->Bool{
    if let userIsNew{
        if let userDidCompleteBoarding {
            if let userFavMovies{
                return getUserStatus(
                                userIsNew: userIsNew,
                                userDidCompleteBoarding: userDidCompleteBoarding,
                                userFavMovies: userFavMovies)
            }else{
                return false
            }
        }else{
            return false
        }
    }else{
        return false
    }
}

// Solution for this is use guard
func checkIfUserIsNew4()->Bool{
    guard let userIsNew else{
        return false
    }
    
    guard let userDidCompleteBoarding else{
        return false
    }
    
    guard let userFavMovies else{
        return false
    }
    
    
    return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteBoarding: userDidCompleteBoarding,
                    userFavMovies: userFavMovies)
    
}

print(checkIfUserIsNew4())
func getUserStatus(userIsNew : Bool, userDidCompleteBoarding: Bool,userFavMovies: String)->Bool{
    if(userIsNew && userDidCompleteBoarding){
        return true
    } else{
        return false
    }
}



//: [Next](@next)
