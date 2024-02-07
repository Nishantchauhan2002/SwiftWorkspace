import UIKit

var greeting = "Hello, playground"
print(greeting)


struct Person:Equatable{
    let name:String
    let id:Int
}

let p1=Person(name:"Foo",id:1)
let p2=Person(name:"Bar",id:1 )

if p1 == p2{
    "they are equal"
}else{
    print("They are not equal")
}
extension Person{
    static func ==(lhs:Self,
                   rhs:Self)->Bool{
        lhs.id==rhs.id
    }
}

enum AnimalType{
    case dog(breed:String)
    case cat(breed:String)
}

let dog1=AnimalType.dog(breed: "German")
let dog2=AnimalType.dog(breed: "Germam")
//
//if dog1 == dog2{
//    print("They are equal")
//}else{
//    print("They are not equal")
//}

extension AnimalType:Equatable{
    static func ==(
        lhs:Self,
        rhs:Self)->Bool{
            switch(lhs,rhs){
            case let(.dog(lhsBreed),.dog(rhsBreed)),
                let (.cat(lhsBreed),.cat(rhsBreed)):
                return lhsBreed==rhsBreed
            default:
                return false
            }
        }
}


//hashable

struct House:Hashable{
    let number:Int
    let numberOfBedrooms:Int
}
let h1=House(number: 2, numberOfBedrooms: 2)
let h2=House(number: 1, numberOfBedrooms: 2)
print(h1.hashValue)
print(h2.hashValue)


struct HouseNumber:Hashable{
    let number:Int
    let numberOfBedrooms:Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
    static func ==(
        lhs:Self,
        rhs:Self)->
    Bool {
        lhs.number==rhs.number
    }
}
let h3=HouseNumber(number: 1, numberOfBedrooms: 4)
let h4=HouseNumber(number: 1, numberOfBedrooms: 3)
 
let setofHouse=Set([h3,h4])
setofHouse.count
print(setofHouse)
