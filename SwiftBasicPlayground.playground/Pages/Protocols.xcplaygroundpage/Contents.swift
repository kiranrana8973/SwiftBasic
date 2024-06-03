
import Foundation

struct EmployeeModel : EmployeeHasName{
    let title : String
    // This should include a protocol
    var name : String
    
}


protocol EmployeeHasName {
    var name : String {get}
}


var employee = EmployeeModel(title: "Mr", name: "Kiran")
print(employee.title)
print(employee.name)


// Swift does not have abstract and interface, so protocol can act both way
protocol UserRepository{
    func addUser()
    func deleteUser()
    func getUsers()
}

class IUserRepository : UserRepository , EmployeeHasName{
    
    let name : String
    
    init(name : String) {
        self.name = name
    }
    
    func addUser(){
        print("Add user")
    }
    
    func deleteUser(){
        print("Delete user")
    }
    
    func getUsers(){
        print("Get user")
    }
}


var iRepo = IUserRepository(name: "Test")
print(iRepo.name)
