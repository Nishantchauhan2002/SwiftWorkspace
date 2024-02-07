import UIKit
import Foundation

var greeting = "Hello, playground"
print(greeting)
func perform<N:Numeric>(
    _ op:(N,N)->N,
    on lhs:N, and rhs:N
)->N{
    op(lhs,rhs)
}

var res=perform( +, on:10, and: 20)
print(res)

func perform2<N>(
    _ op:(N,N)->N,
    on lhs:N, and rhs:N
)->N where N:Numeric{
    op(lhs,rhs)
}

protocol jump{
    func canJump()
}
protocol run{
    func canRun()
}

struct makeFun:jump,run{
    func canJump() {
        print("jumping over the wall")
    }
    
    func canRun() {
        print("Running on the road")
    }
}

func jumpAndRun<T:jump & run>(value:T){
    value.canJump()
    value.canRun()
}


let person=makeFun();
jumpAndRun(value: person)

extension [String]{
    func longestString()->String?{
        self.sorted{(lhs:String,rhs:String)->Bool in
            lhs.count>rhs.count
        }.first
    }
}
["HELLO","NIHSANT CHUAHAN","CURRENTLY WORKING IN DROOM"].longestString()

//associated type
protocol view{
    func addSubView(_ view:view)
}
extension view{
    func addSubView(_ view:view){

    }
}

struct Button:view{
    
}
protocol presentableAsView{
    associatedtype viewType:view
    func produceView()->viewType
    func configure(
        superView:view,
        thisView:viewType)
    func present(view:viewType,
                 on superView:view)
    
}
extension presentableAsView{
    func configure(
        superView:view,
        thisView:viewType){
            //empty no defining
        }
    func present(view:viewType,
                 on superView:view){
        superView.addSubView(view)
    }
}

struct MyButton:presentableAsView{
    
    func produceView()->Button{
        Button()
    }
    func configure(superView: view, thisView: Button) {
        <#code#>
    }
    
}
extension presentableAsView where viewType==Button{
    func doSomething(){
        print("You are a button")
    }
}
let button=MyButton();
button.doSomething()


extension [Int]{
    func average()->Double{
        return Double(self.reduce(0,+))/Double(self.count)
    }
}
[1,2,3,4].average()


//optional

func multiplyByTwo(_ value:Int? = nil)->Int{
    if let value{
        return value*2
    }else{
        return 0
    }
}
print(multiplyByTwo(8))

var age:Int?=nil

if age==nil{
    print("You have not entered anything in the age")
}else{
    print("Your age is \(age)")
}

//
//func checkIsValid(gaurd age:Int)->String{
//    guard age !=0 else {
//        return "No this is not valid"
//    }
//    return "Yes this is right "
//}
//print(checkIsValid(gaurd: 10))

func checkIsValid(guard age: Int) -> String {
    guard age != 0 else {
        return "No, this is not valid"
    }
    return "Yes, this is right"
}

print(checkIsValid(guard: 10))

age=12
switch age{
case .none:
    print("Age does not have any value")
case let .some(value):
    print("Age has a vaue and that is \(value)")
}

struct Person{
    let name:String
    let address:Address?
    struct Address{
        let firstLine:String?
    }
}

let foo=Person(
    name: "Raghav",
    address: nil)

let foo1 = Person(name: "Raghav", address: nil)
// Example 2:
let address2 = Person.Address(firstLine: "London")
let foo2 = Person(name: "Ansh", address: address2)

if let fooFirstLineAddress=foo2.address?.firstLine{
    print((foo2.address)!)
}else{
    print("does not any address")

}

let bar:Person?=Person(name: "Bar", address: Person.Address(firstLine: nil))

if bar?.name=="Bar",
   bar?.address?.firstLine==nil{
    print("Bar name is bar and has no firstline address")
}else{
    print("Something is not working right")
}

let baz: Person? = Person(
    name: "Baz",
    address: Person.Address(
        firstLine: "Chambal"
    )
)

switch baz?.address?.firstLine {
case let .some(firstLine) where firstLine.starts(with: "Baz"):
    print("Baz address is correct")
case .some(_):
    print("Don't you dare")
case .none:
    print("You have no address")
}


