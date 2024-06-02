//: [Previous](@previous)

import Foundation

struct Person{
    let fname : String
    let lname : String
    let dob : Date?
    let address : String?
    
    init(fname: String, lname: String, dob: Date?, address: String?) {
        self.fname = fname
        self.lname = lname
        self.dob = dob
        self.address = address
    }
}


var person  =  Person(fname: "Kiran", lname: "Rana", dob: nil, address: nil)
print(person)

