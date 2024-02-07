import Foundation
//var name:String="Hello NISHANT CHAUHAN"
//var age:Int=21
//var companyName:String="Droom"
//print(name)
//print(age)
//print(companyName)
//print(name)

//func printMyname(){
//    print("Hello you called a function here")
//}
//printMyname()
//
// var arr=["Nishant Chauhan","a"]
//print(arr)
//arr.append("Hello")
//print(arr)
//
//func addTwoNumber(a:Int,b:Int)->Int{
//    return a+b
//}
//
//let a=10;
//let b=20;
//let ans=addTwoNumber(a: a, b: b)
//print(ans)
//print("Hello you called a function")
//
let ages=[12,4,13,5,23,45,43]
var numbers=ages.sorted(by: {
    (lhs:Int,rhs:Int)->Bool in
    return lhs<rhs

})
print(numbers)
//for i in ages {
//    print(i)
//}
//print(ages[0])
//var i:Int=0
//
//func checkArrayIsSorted(_ array:[Int])-> Bool{
//        while(i<ages.count){
//        if(ages[i]>ages[i+1]){
//            return false
//        }
//        i=i+1;
//    }
//    return true
//}
//var res=checkArrayIsSorted(ages)
//if res{
//    print("Array is sorted")
//}else{
//    print("Array is not sorted")
//}
//print(res)
//
//
//
//
//
//
//var name="Nishant Chauhan"
//if name.isEmpty{
//    print("Your String is Empty")
//}else{
//    print("You have a value ie. \(name)")
//}
//
//func addWithValue(_ lhs:Int, _ rhs:Int)->Int{
//    return lhs+rhs
//}
//print(addWithValue(10, 20))
//print("Hello")
//
//


//var currentLevel=0;
//repeat{
//    print("Your currentLevel is \(currentLevel)")
//    currentLevel+=1
//}while(currentLevel<=10)


    
func linearSearch(_ array: [Int], target: Int) -> Int {
    for (index, val) in array.enumerated() {
        if val == target {
            return index
        }
    }
    return -1
}


var arr = [1, 4, 3, 2, 5, 46, 90, 12]
arr=arr.reversed()
print(arr)

var res = linearSearch(arr, target: 1
)

if res == -1 {
    print("Element is not present in the array")
} else {
    print("Element is present at \(res)")
}


var dayOfTheweek=3;

switch dayOfTheweek{
case 1:
    print("Today is Monday")
    break
case 2:
    print("Today is Tuesday")
    break
case 3:
    print("Today is Wednesday")
    fallthrough
default:
    print("Today is Holiday")
    break
}

var newArr=[12,34,12,12,43,12,54,12]
//for (index,val) in newArr.enumerated(){
//    print(index," " ,val)
//}

func calculateFrequency(_ array :[Int])->[Int:Int]{
    var freqCount=[Int:Int]()
    for element in array{
        if let count=freqCount[element]{
            freqCount[element]=count+1
        }else{
            freqCount[element]=1
        }
    }
    return freqCount
}


var answer=calculateFrequency(newArr)
//print(answer)
print("Ele  Freq")
for (index,val) in answer{
    print(index," ",val)
}

print(answer)


var hashSet:Set=[1,2,3,4,5,4,321]
print(hashSet,terminator: " ")
print()


let printResult:(String)->(String)={ name in
    
    return "Hello \(name)"
    
}
let result=printResult("Nishant")
print(result)

func customAdd(_ lhs:Int,_ rhs:Int,
    using f :(Int,Int)->Int)
->Int{
    return f(lhs,rhs)
}
let es = customAdd(10, 20){
    (lhs:Int,rhs:Int)->Int in
    return lhs+rhs
}
print(es)
