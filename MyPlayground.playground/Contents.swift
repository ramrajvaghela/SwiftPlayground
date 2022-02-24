import UIKit

var greeting = "Hello, playground"

var str = "Hello Simform"
print(str.uppercased())//will print all letters in uppercase
print(str)

var num = 10
print (num)

var num2:Int  = 34
num2=50
print (num)

let pi:Double = 3.14// constant variable
//pi=5.5
print(pi)
print (num + num2)

//if else
if num < 10 {
    print("Num is less than 20")
}
else if num > 8 {
    print("Num is greater than 15")
}

//switch statement
switch str {
case "Hello Simform" :
    print("Correct")
default:
    print("Default case executed")
}

//simple while loop
var counter = 5
while counter > 0
{
    print("Hello from while loop")
    counter = counter - 1
}
counter = 5
repeat {
    print("Hello from repeat while loop")
    counter = counter - 1

} while counter > 0


//function to add two numbers
func addTwoNumbers(){
    let no1 = 105
    let no2 = 20
    
    let sum = no1 + no2
    print("Addition of",no1,"+",no2,"is",sum)
}
addTwoNumbers()

//Array and Dictionary
var numbers: [Int] = [1,2,3,4,5]
for number in numbers{
    print(number)
}

public var Cars: [String:Int] = ["Nissan":10, "BMW":20, "Audi":33]
for Car in Cars{
    print(Car)
}

//optionals and unwrapping
var a: Int? = nil
var b: Int? = 4
//Unwrapping
if let temp = a {
    print("A is having some value \(a ?? 4)")
}
else {
    print("A is not having any value hhhh")
}
print("A is having some value \(a ?? 4) and b is having some value \(b ?? 5) ")
var name: String? = "Ramraj"
print(name!)
print(type(of: name))

//force unwrapping
var age: Int? = 20
print("My age is:",age ?? 0)
