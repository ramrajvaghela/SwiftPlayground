import UIKit

//Declaring Optionals
import Foundation
//Declaring optionals in swift
var IntegerOptional: Int?
var StringOptional: String? = "Ramraj"

if StringOptional != nil {
    print("String is \(StringOptional)")
}
else {
    print("String is nil")
}

//Force unwrapping
//Using Force Unwrapping in optionals
let StringOptional1: String? = "Hello Simform"
var newString  = StringOptional1! // use of forece unwrapping
if StringOptional1 != nil {
    print("String is:\(newString)")
}
else {
    print("String is nil")
}

//If let (safe unwrapping)

 
//Using if let also called as safe Unwrapping in optionals
let StringOptionals: String? = "Safe Unwrapping"
var newString2: String
if let newString2 = StringOptionals  {
    print("String is:\(newString2)")
}
else {
    print("String is nil")
}

 
//Using guard in Optionals
var i = 20
for i in 1...20 {
    
guard  i.isMultiple(of:2) else  {
    print(i,terminator: " ")
    continue
    }
}
//Using nil colancing in optionals
let name: String? = "Ramraj"
let unwrappedName = name ?? "Anonymous"
print ("\nExample of nil Collision:",unwrappedName)
