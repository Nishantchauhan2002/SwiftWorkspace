import UIKit
import Foundation


var greeting = "Hello, playground"
print(greeting)

var arr=[1,2,3,34,5,6,2,54]
//arr.sorted(by:<)
arr=arr.sorted(by: {(lhs:Int,rhs:Int)->Bool in
    return lhs<rhs
})

print(arr)

arr.append(23)
arr.remove(at: 1)
arr
print(arr)

//for(index,value) in arr.enumerated(){
//    print(index," ",value)
//}
arr.map(-)
arr.last
arr.first
arr.insert(contentsOf: [9,34], at: 2)
print("The size of the array is \(arr.count)")
print(arr)

for value in arr{
    print(value,separator: " ",terminator: " ")
}
print("end")

var answer=arr.map{
    (value:Int)in
    if value%2==0 {
        print(value)
    }
}
arr.map{(value:Int)->Int in
    value%2==0 ? value : -1
}

for value in arr where value%2==0{
    print(value,separator: " ",terminator: ",")
}

var filteredArray = arr.filter({(value:Int)->Bool in
    value>=12
})
print(filteredArray)

arr.compactMap{(value:Int)->String? in
    value%2==0 ? String(value) : nil
}
var array=[1,9,2,3,1,2,3,1,2,3,2,12]
let hashSet=Set([1,2,3,2,1])
print(hashSet)
let sets:Set<AnyHashable>=[1,2,"Hello","World",43]
sets.compactMap{(value:Any)->String?  in
    value as? String
}


struct  Person :Hashable{
    let id:UUID
    let name:String
    let lname:String
}
let fooid=UUID()
let foo1=Person(id: fooid, name: "Nishant", lname: "Chauhan")
let foo2=Person(id: fooid, name: "Raghav", lname: "Pareek")

let set:Set<Person>=[foo1,foo2]
print(set)
set.count

struct  Person2 :Hashable{
    let id:UUID
    let name:String
    let lname:String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func ==(lhs:Self,
             rhs:Self)->Bool{
        lhs.id == rhs.id
    }
}
let bazId=UUID()
let p1=Person2(id: bazId, name: "baz", lname: "nsa")
let p2=Person2(id: bazId, name: "qnx", lname: "nasa")

if p1 == p2{
    print("They are equal")
}
else{
    print("They are not equal")
}
 
let set1=Set([p1,p2])
print(set1)


let dict=["key":"1",
          "name":"Nishant",
          "lastName":"Chauhan",
          "address":[
            "street":"st 121",
            "Colony":"Rajender Nagar"
          ]
] as [String:Any]
dict["name"]
dict.keys
dict.values

for (key,value) in dict{
    print("\(key) \(value)")
}



