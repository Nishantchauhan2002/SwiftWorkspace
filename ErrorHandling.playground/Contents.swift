import UIKit

var greeting = "Hello, playground"
print(greeting)

struct person{
    let firstName:String?
    let lastName:String?
    
    enum Errors:Error{
        case firstNameIsNill
        case lastNameIsNill
        case bothNameAreNill
        
    }
    func getFullName() throws ->String{
        
        switch (firstName,lastName){
        case (.none, .none):
            throw Errors.bothNameAreNill
        case (.none,.some):
            throw Errors.firstNameIsNill
        case (.some,.none):
            throw Errors.lastNameIsNill
        case let (.some(firstName), .some(lastName)):
            return "\(firstName) \(lastName)"
        }
    }
}
let p1=person(firstName: "Nishant", lastName: nil)
//p1.getFullName()
do{
    let fullName = try p1.getFullName()
}
catch{
    print("Error is \(error)")
}

let myname=person(firstName: nil, lastName: nil)

do{
    let fullname=try myname.getFullName()
}catch person.Errors.firstNameIsNill{
    print("first name is nill")
}catch person.Errors.lastNameIsNill{
    print("last name is nill")
}catch person.Errors.bothNameAreNill{
    print("both the names are nill")
}catch{
    print("Kya likh dia ")
}


struct Car{
    var manufacturer:String
    
    enum Errors:Error{
        case invalidManufacturer
    }
    init(manufacturer:String)throws {
        if manufacturer.isEmpty  {
            throw Errors.invalidManufacturer
        }
        self.manufacturer=manufacturer
    }
}
do{
    let c1=try Car(manufacturer: "")
    
}catch Car.Errors.invalidManufacturer{
    print("you have entered a wrong value")
}catch{
    print("Your have an error ")
}
 
if let myCar=try? Car(manufacturer: "Tesla"){
    print("Your manufacturer name is \(myCar.manufacturer)")
}else{
    print("Your don't have any manufacturer")
}


func fullName(
    firstName:String?,
    lastName:String?,
    calculator: (String?,String?) throws->String?
)rethrows ->String?{
    try calculator(firstName,lastName)
}
enum NameError:Error{
    case firstNameError
    case lastNameError
}

func +(
    firstName:String?,
    lastName:String?
)throws ->String{
    guard let firstName,
    !firstName.isEmpty else{
        throw NameError.firstNameError
    }
    guard let lastName,
    !lastName.isEmpty else{
        throw NameError.lastNameError
    }
    return "\(firstName) \(lastName)"
}

do{
    let foo=try fullName(firstName: nil, lastName: nil, calculator: +)
}catch NameError.firstNameError{
    print("First NAME IS wrong")
}catch NameError.lastNameError{
    print("last nmae is error")
}

enum IntegerError:Error{
    case noPositiveError(thisValue:Int)
}
func previousNumber(
    from int:Int
)->Result<Int,IntegerError>{
    guard int>0 else{
        return Result.failure(IntegerError.noPositiveError(thisValue: int))
    }
    return Result.success(int-1)
}
func perform(forValue value:Int){
    switch previousNumber(from: value){
        
    case let .success(previousValue):
        previousValue
    case let.failure(error):
        switch error{
        case let.noPositiveError(thisValue):
            print("NO positive value after this \(thisValue)")
        }
    }
}
perform(forValue: 2)
perform(forValue: 0)
