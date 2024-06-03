
import Foundation

struct Student{
    let fname : String
    let lname : String
    let age : Int
}

var s1 = Student(fname: "Kiran", lname: "Rana", age: 22)
var s2 = Student(fname: "Kiran2", lname: "Rana", age: 22)
var s3 = Student(fname: "Kiran3", lname: "Rana", age: 22)
var s4 = Student(fname: "Kiran4", lname: "Rana", age: 22)
var s5 = Student(fname: "Kiran5", lname: "Rana", age: 22)


var arr : [Student] = [s1,s2,s3,s4,s5]

// 1 way
for student in arr{
    print("Fname is \(student.fname) and lname : \(student.lname)")
}

// 2nd way
arr.forEach { (student) in
    print(student)
 }

//3rd way
for i in 0...arr.count - 1 {
    print(arr[i].fname)
}

// Remove student 2
arr.remove(at: 1)

print(arr)

