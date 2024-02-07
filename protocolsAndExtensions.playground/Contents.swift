import UIKit

var greeting = "Hello, playground"
print(greeting)

//Protocols

protocol canMove{
    func move()
}
struct Animal:canMove{
    
    var name:String
    
    init(name:String){
        self.name=name
    }

    func move() {
        print("\(name) is Moving ....")
    }
}

let n1=Animal(name: "Cow")
n1.move()


protocol jumping{
    func jump()
}
extension jumping{
    func jump(){
        print("jumping over the droom ")
    }
}
struct task:jumping{
    
}
let t1=task()
t1.jump()


protocol hasName{
    var name:String{get}
    var age:Int{get set}
//    func describeMe()

}
extension hasName{
    func describeMe()->String{
        return "Your name is \(name) and you are \(age) old"
    }
}

struct details :hasName{

    var name: String
    var age: Int
    
    init(name:String,age:Int){
        self.name=name
        self.age=age
    }
}

let m1=details(name: "Nishant", age: 21)
var d1=m1.describeMe()
print(d1)

protocol vehicle{
    var speed:Int{get set}
    mutating func increaseSpeed(by value: Int)
}
extension vehicle{
    mutating func increaseSpeed(by value:Int){
        self.speed+=value
    }
}
struct bike:vehicle{
    var speed: Int
    
    init(){
        speed=0
    }
}

var b1=bike()
b1.speed
b1.increaseSpeed(by: 10)
b1.speed


func confirmOrNot(obj:Any){
    if obj is vehicle{
        print("Yes it confirms to a protocols")
    }else{
        print("No it is not a protocols" )
    }
}
confirmOrNot(obj: b1)


//extensions

extension Int{
    mutating func increaseSpeed(){
        self+=2
    }
}
var a=2;
a.increaseSpeed()

struct person{
    var firstName:String
    var lastName:String
    
    
    
}
extension person{
    init(fullName:String){
        let components=fullName.components(separatedBy: " ")
        self.init(firstName: components.first ?? fullName,
                  lastName: components.last ?? fullName)
    }
}
let per=person(fullName: "Nishant Chauhan")
print(per.firstName)
print(per.lastName)

