//: [Previous](@previous)

import Foundation

let year : Int = 1990


if isLeapYear( targetYear: year) {
    print("Leap year")
} else{
    print("Not a Leap year ")
}


func isLeapYear( targetYear : Int) -> Bool {
    if targetYear % 100 == 0 {
        return false
    }
    
    if targetYear % 4 == 0 {
        return true
    }
    
    return false
}


// check if a character is vowel or consonant
let char : Character = "U"

if char == "A" || char == "E" || char == "I" || char == "O" || char == "U" {
    print("Vowel")
} else{
    print("Consonant")
}

//: [Next](@next)
