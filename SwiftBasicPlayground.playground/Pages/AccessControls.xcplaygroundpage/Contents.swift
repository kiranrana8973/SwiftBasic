//: [Previous](@previous)

import Foundation

enum MovieGenre{
    case Action,Romance,Horror
}

struct MovieModel{
    let title : String
    let genre : MovieGenre
    let isFavourite : Bool
}

class MovieManager{
    var movie = MovieModel(title: "Movie 1", genre: .Romance, isFavourite: false)
    print(movie)
}



//: [Next](@next)
