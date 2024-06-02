//: [Previous](@previous)

import Foundation

struct PersonState{
    var isLoading : Bool
    var hasData : Bool
    var hasError : Bool
    
    init(isLoading: Bool, hasData: Bool, hasError: Bool) {
        self.isLoading = isLoading
        self.hasData = hasData
        self.hasError = hasError
    }
    
    
}

var state = PersonState(isLoading: false, hasData: false, hasError: false)
print(state)

state.isLoading = true
print(state)

state.hasData = true
print(state)

state.isLoading = false
state.hasData = false
print(state)




