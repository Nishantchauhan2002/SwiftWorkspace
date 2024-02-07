import UIKit

struct calculator{
    static func calculateGamesPlayed() -> Int{
        var games:[Int] = []
        for i in 1...4_000{games.append(i)}
        return games.last!
    }
}

struct Person{
    var Fname:String
    var Lname:String
    var age:Int
    
    lazy var gamesPlayed={
        calculator.calculateGamesPlayed()
    }()
    
    lazy var introduction={
        return "My name is \(Fname) \(Lname).  I am \(age) years old"
    }()
}

var jordan=Person(Fname: "Michal", Lname: "Jordan", age: 24)
print(jordan.introduction)
