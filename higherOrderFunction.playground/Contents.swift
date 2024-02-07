import UIKit
import Foundation
//
//var greeting = "Hello, playground"
//print(greeting)
//var array=[1,2,3,4,5]
//for num in array{
//    num*5
//}
//print(array)
//
//var newArr:[Int]=[]
//newArr=array.map{(value:Int) ->Int in
//    value*5
//}
//print(newArr)
//
//
//let cmparr:[Int?]=[1,2,3,nil,4,5,nil]
//let m1=cmparr.map{num ->Int? in
//    if let num{
//       return num*2
//    }else{
//        return nil
//    }
//}
//print(m1)
//let m2=cmparr.map{$0 == nil ? nil :$0!*2}
//print(m2)
//
//let m3=cmparr.compactMap({$0 == nil ? nil :$0!*2})
//print(m3)
//print("Original array \(cmparr)")
//
//let m4=cmparr.compactMap({$0}).map({$0*5})
//print(m4)
//
////flat array
//
//var todarray:[[Int]]=[[1,2,3],
//[4,5,6],[7,8,9]]
//print(todarray)
//var temparr:[Int]=[]
//
//for number in todarray{
//    temparr+=number
//}
//print(temparr)
//let f1=todarray.flatMap{$0}
//print(f1)
//
//let f2=todarray.flatMap{$0}.map{$0*5}
//print(f2)
//
//
//
//var names = ["John K", "David Garner", "Mike Smith", "Will lee"]
//let firstNames = names.map{(name) -> String in
//    name.split(separator: " ").first!.description
//}
//debugPrint(firstNames)
//let newNames = names.map{$0.split(separator: " ").first!.description}
//debugPrint(newNames)
//
//var fullnames = ["Nishant Chauhan","Ashish Parmar","Rohit Rana","Tarun Rajput"]
//let fname=fullnames.map{(name)->String in
//    name.split(separator: " ").first!.description
//}
//print(fname)
//
//let lastName=fullnames.map{(name) ->String in
//    name.split(separator: " ").last!.description
//}
//print(lastName)
//
//
//var marks=["10","20","Thirty one","one"]
//
//let intmarks=marks.compactMap{(num) in
//    Int(num)?.description
//}
//print(intmarks)
//
//var Nmarks=[10,20,33,90,89,43,123]
//let passed=Nmarks.filter{(num) in
//    num>=33
//}
//print(passed)
//
//
//var totalMarks=[98,76,39,98,78,89,9,23]
//let sum=totalMarks.reduce(0){ (result,num) in
//    return result+num
//}
//
//print(sum)
//
//let sortedArr=totalMarks.sorted(by: {(a,b)->Bool in
//    a<b
//})
//
//let index=totalMarks.map{(num) in
//    return num>=33
//}
//print(index)
//
//type(of: index)
//var failed=index.compactMap{ (num) in
//    num==false ? "failed":"passed"
//}
//failed


var detailStudent:[String:Any]=[
    "Nishant":90,
    "Aman":89,
    "Raj":45,
    "Aadi":94,
    "Vishnu":92,
    "Rohan":23,
    "Sagar":32,
    "Nikhil":12
]
//print(detailStudent)


for stu in detailStudent{
    if stu.value as! Int>33{
        print("\(stu.key) is passed")
    }else{
        print("\(stu.key) is failed")
        
    }
}

let passfail=detailStudent.compactMapValues{ value in
    if let marks = value as? Int{
        return marks >= 33 ? "passed" :"failed"
    }
    return nil
}
print(passfail)
var passedname:[String]=[]
var failedname:[String]=[]
let passedStudent=passfail.map{data in
    data.value == "passed" ? passedname.append(data.key) : failedname.append(data.key)
}
print("Passed students are --> \(passedname)")
print("Failed students are --> \(failedname)")



