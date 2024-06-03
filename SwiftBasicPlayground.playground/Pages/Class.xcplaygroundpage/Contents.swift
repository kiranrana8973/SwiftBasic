//: [Previous](@previous)

import Foundation

class StudentViewModel{
    let title :  String
    private(set) var showButton : Bool
    
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
    //
    }
    
    func changeShowButton(newValue : Bool) {
        showButton = newValue
    }
}

// class is reference type
// we are changing the data not the object , so with let we can change the data
let studentViewModel = StudentViewModel(title: "First screen", showButton: true)
print(studentViewModel)

//studentViewModel.title = "Second Screen"
studentViewModel.changeShowButton(newValue: false)

print(studentViewModel.showButton)

//: [Next](@next)
