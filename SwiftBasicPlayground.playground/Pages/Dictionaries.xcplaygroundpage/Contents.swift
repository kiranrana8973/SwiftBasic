

import Foundation

var englishNepali : [String:String] = [
    "Hello" :   "Nameste",
    "Where" : "kata"
]


print(englishNepali)

print(englishNepali["Hello"]!)
englishNepali.removeValue(forKey: "Hello")
print(englishNepali)
