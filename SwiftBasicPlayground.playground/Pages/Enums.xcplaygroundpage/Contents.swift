
import Foundation
/*https://www.youtube.com/watch?v=YPUCML__Md8&list=PLwvDm4VfkdpiLvzZFJI6rVIBtdolrJBVB&index=11&ab_channel=SwiftfulThinking */

// Similar to struct
// basic difference is : in run time we know all of the cases or versions of enums , where in
// struct you don't need to know all the cases during the runtime

enum CountriesEnum{
    case Nepal
    case India
    case UK
    case US
    
    var getCountries : String {
        //        if self == .Nepal{
        //            return "Nepal"
        //        } else if self == .India {
        //            return "India"
        //        } else if self == .UK {
        //            return "UK"
        //        } else {
        //            return "US"
        //        }
        
        switch self {
            case .Nepal:
                return "Nepal"
            case .India:
                return "India"
            case .UK:
                return "UK"
            default:
                return "US"
        }
    }
    
}

struct Employee{
    let fname : String
    let lname : String
    let country : CountriesEnum
}

var employee = Employee(fname: "Kiran",lname : "Rana" , country: .India)
print(employee.country.getCountries)


