
import Foundation


struct Person{
    let fname : String
    let lname : String
    let dob : Date
    
    // CopyWith function
    func copyWith(fname: String?, lname : String?, dob : Date?) -> Person{
        Person(
            fname: fname ?? self.fname,
            lname: lname ?? self.fname, dob: dob ?? self.dob
        )
    }
    
}

var person = Person(fname: "Kiran", lname: "Rana", dob: Date())
print(person)

person = person.copyWith(fname: nil, lname: "Khan", dob: nil)
print(person)
