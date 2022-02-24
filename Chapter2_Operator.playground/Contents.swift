import UIKit

//String concatenation using operator
var string1: String = "How was "
var string2: String = "your day?"
    print("Concatenated string is:",string1 + string2)

//Create one example for show usage of operator's addition, multiplication, division for integers and floats
let num1: Int = 23
let num2: Int = 34
    //Integer
    var add = num1 + num2
    print("Operations of Integer numbers ",num1," and ",num2,"are:")
    print("1.Addition is:",add)
    var su = num1 - num2
    print("2.Subtraction is:",su)
    var div = num1 / num2
    print("3.Addition is:",div)
    var multi = num1 * num2
    print("4.Multiplication is:",multi)
    var modulo = num1 % num2
    print("5.Modulo is:",modulo)
    //Float
    var num3:Float = 12.5
    var num4:Float = 23.6
    var addFloat:Float = num3 + num4
    print("Operations of Float numbers ",num3," and ",num4,"are:")
    print("1.Addition is:",addFloat)
    var suFloat = num3 - num4
    print("2.Subtraction is:",suFloat)
    var divFloat = num3 / num4
    print("3.Addition is:",divFloat)
    var multiFloat = num3 * num4
    print("4.Multiplication is:",multiFloat)

//What is tarnery operator and show example of usage?

    var a = 6
    var result: Bool = a > 5 ? true : false
    print(result)
    
    var b = 23
    print(b > 20 ? 23 : 0)
    
