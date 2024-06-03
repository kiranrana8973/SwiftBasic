
import Foundation

let searchValue : Int = 3

let arr : [Int] = [1,2,3,4,5,6]


func linearSearch(arr : [Int] , searchValue : Int) -> Bool{
    var isFound : Bool = false
    for item in arr{
        if item == searchValue{
            isFound = true
            break
        }
    }
    
    return isFound
}

print(linearSearch(arr: arr, searchValue: searchValue))


