import UIKit
import Foundation


var greeting = "Hello, playground"
// Closures
let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

let res = add(20, 30)
print(res)

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using innerFunction: (Int, Int) -> Int
) -> Int {
    return innerFunction(lhs, rhs)
}

// Discard the result using an underscore
_ = customAdd(20, 30) {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

func add20To(value:Int)->Int{
    value+2
}
func doAddition(
    on value:Int,
    using function:(Int)->Int )->Int{
    function(value)
}
_=doAddition(
on:20,
using:add20To(value:))


func multiply(_ lhs:Int,
  _ rhs:Int,
  using perform:(Int,Int)->Int
)->Int{
    perform(lhs,rhs)
}

var ans=multiply(30,10){
    (lhs:Int,rhs:Int)->Int in
    lhs*rhs
}
print(ans)

multiply(20,10){    //this is the one method thrugh which we can call the function
 $0 * $1
}

var swap:(Int,Int)->[Int]={
    (lhs:Int,rhs:Int)->[Int] in
    var temp=lhs+rhs;
    var newlhs=temp-lhs;
    var newrhs=temp-newlhs
    
    return [newlhs,newrhs]
}

print(swap(10,20))




//structs

struct Person{
    let name:String
    let age:Int
    let companyName:String
    
    init(name:String,age:Int,companyName:String){
        self.name=name;
        self.age=age
        self.companyName=companyName
    }
    
    init(name:String,age:Int){
        self.name=name;
        self.age=age
        self.companyName="Apple"
    }

}

var p1=Person(name:"Ravi",age:29,companyName: "Droom")
print(p1)
print(p1.name)

var p2=Person(name:"Harish",age: 24)
print(p2)


struct car{
    let name:String
    var speed:Int
    
    mutating func changeSpeed(currentSpeed:Int){
        self.speed=currentSpeed
    }
}

var c1=car(name:"Nishant Chauhan",speed: 50)
print(c1)
//c1.speed=90
//print(c1)
c1.changeSpeed(currentSpeed: 100)
print(c1)
let copy=c1;
print(copy)
c1.speed=80
print(c1)



