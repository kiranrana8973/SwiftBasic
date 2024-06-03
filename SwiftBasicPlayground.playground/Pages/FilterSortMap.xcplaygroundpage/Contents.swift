
import Foundation

struct DatabaseUser{
    let name : String
    let isPremium : Bool
    let order: Int
}

var allUsers : [DatabaseUser] = [
    DatabaseUser(name: "Kiran", isPremium: true, order: 2),
    DatabaseUser(name: "Kiran1", isPremium: false, order: 3),
    DatabaseUser(name: "Kiran2", isPremium: true, order: 4),
    DatabaseUser(name: "Kiran3", isPremium: false, order: 200),
    DatabaseUser(name: "Kiran4", isPremium: true, order: 200),
]


var allPremiumUsers : [DatabaseUser] = []

for users in allUsers {
    if users.isPremium {
        allPremiumUsers.append(users)
    }
}

for users in allPremiumUsers {
    print(users.name)
}

// OR

var allPremiumUsers2 : [DatabaseUser] = allUsers.filter { user in
    return user.isPremium
}

print(allPremiumUsers2)


// Order
var orderedUsers = allUsers.sorted { user1, user2   in
    // check for two values at a time and returns in sorted order
    return user1.order < user2.order
}

// or

orderedUsers = allUsers.sorted(by: {$0.order < $1.order})

for user in orderedUsers {
    print(user.order)
}
