import UIKit
import Foundation

var greeting = "Hello, playground"
print(greeting)

//Enumrations

enum Animals{
    case cat
    case dog
    case rabbit
}

let c1=Animals.cat
print(c1)

if(c1==Animals.cat){
    print("Yes this is a kind of animal cat")
}else if(c1==Animals.dog){
    print("Yes this is kind of animal dog")
}else{
    print("No it's not a kind of animal")
}

switch c1{
    
case .cat:
    print("This is a cat")
    break
case .dog:
    print("This is a dog")
    break
case .rabbit:
    print("This is a rabbit")
    break
default:
    print("Please enter some value ")
}


enum shortCut{
    case fileAndFolder(path:URL,name:String)
    case wwwUrl(path:URL)
    case song(name:String,artistName:String)
}

let wwwApple=shortCut.wwwUrl(path: URL(string: "www.applw.com")!)
print(wwwApple)

//if(wwwApple == shortCut.wwwUrl(path: URL(string: "www.applw.com")!)){
//    print("Yah we can compare ")
//}we can not compare like this thw way we are doing we can compare it by using the switch statement

switch wwwApple{
    
case .fileAndFolder(path: let path, name: let name):
    print(path)
    print(name)
    break
case .wwwUrl(path: let path):
    print(path)
    break
case .song(name: let name, artistName: let artistName):
    print(name)
    print(artistName)
    break
}


let withYou=shortCut.song(
    name: "With You",
    artistName: "Ndee Kundu")

if case let .song(name, artistName)=withYou{
    print(name)
    print(artistName)
    print(withYou)
}

enum vehicle{
    case bike(model:String,year:Int)
    case car(model:String,year:Int)
}

let bike=vehicle.bike(model: "Yamha", year: 2010)
let car = vehicle.car(model:"BMW", year: 2009)


//one way for searching the type of case that we have but in this we have to extends the code we can do it by using the function also we have to define the type of case tha we have
switch bike{
    
case let .bike(model, year):
    model
    year
    break
case let .car(model, year):
    model
    year
    break
    
}
switch car{
    
case .bike(model: let model, year: let year):
    model
    year
    break
case .car(model: let model, year: let year):
    model
    year
    break
}

//let;s do it by using the function

func getModel(_ vehicle:vehicle){
    switch vehicle{
    case .bike(model: let model, year: let year):
        print(model)
        print(year)
        break
    case .car(model: let model, year: let year):
        print(model)
        print(year)
        break
    }

}

getModel(bike)


enum familyMember:String{
    case father="Dad"
    case mother="Mom"
    case brother="bro"
}
familyMember.father.rawValue


//Classes

class Person{
    var name:String
    var age:Int
    
    init(_ name:String,_ age:Int){
        self.name=name
        self.age=age
    }
    
    func changeAge(){
        self.age+=1
    }
}

let p1=Person("Mohan",19)
print(p1.age)
p1.changeAge()
p1.age

class transport:Person{
    var model:String
    
    init(_ model:String,_ name:String,_ age:Int){
        self.model=model
        super.init(name, age)
    }
    
    func printDetails(){
        print("\(name) has a \(model)")
    }
}
let p3=transport("Bike","Harish",19)
print(p3.printDetails())



