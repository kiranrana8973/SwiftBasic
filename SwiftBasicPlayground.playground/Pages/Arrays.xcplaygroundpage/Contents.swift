//: [Previous](@previous)

import Foundation

// Arrays
var fruits : [String]

fruits = ["Mango","Apple","Grapes","Banana"]

print(fruits)
print(fruits.count)
print(fruits.first)
print(fruits.last)

fruits.append("Green Apple")
print(fruits)


fruits.insert("Mango1", at: 0)

print(fruits)
print(fruits.count)
print(fruits.first)
print(fruits.last)

// Delete an item

if fruits.indices.contains(1){
    fruits.remove(at: 1)
}

print(fruits)
//: [Next](@next)
