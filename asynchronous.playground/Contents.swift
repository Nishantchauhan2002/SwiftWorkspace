import UIKit
import Foundation
import PlaygroundSupport
import _Concurrency

PlaygroundPage.current.needsIndefiniteExecution=true

var greeting = "Hello, playground"
print(greeting)


func fullName(
    firstName:String,
    lastName:String)async -> String{
        try? await Task.sleep(for:.seconds(5))
        return "\(firstName) \(lastName)"
    }
Task{
    let fName:String=await fullName(firstName: "Hariya", lastName: "Kaka")
    print(fName)
}
    
 
enum clothe{
    case socks,trousers,shirts
}

func buySocks() async throws->clothe{
    try await Task.sleep(for: .seconds(1))
    return clothe.socks
}


func buyShirt() async throws->clothe{
    try await Task.sleep(for: .seconds(1))
    return clothe.shirts
}


func buytrouser() async throws->clothe{
    try await Task.sleep(for: .seconds(1))
    return clothe.trousers
}

//struct Esemble:CustomDebugStringConvertible{
//    let cloths:[clothe]
//    let totalPrice:Double
//
//    var debugDescription: String{
//        "Clothes \(cloths) totalPrice \(totalPrice )"
//    }
//}
//
//func buyAll() async throws ->Esemble{
//    async let socks=buySocks()
//    async let shirts=buyShirt()
//    async let trouser=buytrouser()
//    let esemble=Esemble(cloths: await[
//    try socks,
//    try shirts,
//    try trouser
//    ], totalPrice: 200)
//
//    return esemble
//}
//
//if let ensemble=try? await buyAll(){
//    ensemble
//}else{
//    print("Something is wrong in this ")
//}

func getFullName(
    delay:Duration,
calculate:() async ->String
)async ->String{
    try? await Task.sleep(for: delay)
    return await calculate()
}

func fullName()async ->String {"Foo Bar"}
Task{
    await getFullName(
        delay: .seconds(1)){
            async let name=fullName()
            return await name
        }
}

