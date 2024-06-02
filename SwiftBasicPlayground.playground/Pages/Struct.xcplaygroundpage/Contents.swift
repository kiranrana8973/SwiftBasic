import Foundation

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool
    
    init(title: String, dateCreated: Date? = nil, isPremium: Bool? = nil) {
        self.title = title
        self.dateCreated = dateCreated ?? Date()
        self.isPremium = isPremium ?? true
    }
}

// This initializes with default values for dateCreated and isPremium
var quiz = Quiz(title: "Quiz 1")
print(quiz)

// This initializes with a provided value for isPremium and default value for dateCreated
var quiz2 = Quiz(title: "Quiz 2", dateCreated: nil, isPremium: false)
print(quiz2)


struct Student{
    let fname: String
    let lname : String
    let dob : Date
    
    init(fname: String, lname: String, dob: Date?) {
        self.fname = fname
        self.lname = lname
        self.dob = dob ?? Date()
    }
}

var student = Student(fname: "Kiran", lname: "Rana", dob: nil)
print(student)
