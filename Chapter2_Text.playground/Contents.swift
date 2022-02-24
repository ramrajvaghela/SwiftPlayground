import UIKit

//Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
    
    let string1: String = "Example of string"
    let len = string1.count
    if len > 2 {
        print("Original String is:",string1)
        print("New string is:",string1.prefix(2))
    }
    else if len <= 2 {
        print("Original String is:",string1)
        print("New String:",string1)
    }

//Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.

    let string2: String = "Simform"
    var len2 = string2.count
    if len2 < 2{
        print("String must have atleast 2 characters")
    }
    else{
        let start = string1.index(string1.startIndex,offsetBy:1)
        let last = string1.index(string1.startIndex,offsetBy:len2 - 1)
        let range = start...last
        print("String is:",String(string2[range]));
    }

//Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
    var string3: String = "Ramraj"
    var removeFirst1 = String(string3.removeFirst())
    
    var string4: String = "Swift"
    var removeFirst2 = String(string4.removeFirst())
    
    print("Concatenated string is:",string3+string4)

//Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
    var string5: String = "Hello Ramraj"
    var RemovingFirstTwo  = string5.prefix(2)
    var remainingChar = string5.suffix(string5.count-2)
    print("Merged String is:",remainingChar+RemovingFirstTwo)

//Write a Swift program to test if a given string starts with "Sw".
    var string6: String = "Swift"
    func StratingCheck(_ string6: String) -> Bool {
        if string6.hasPrefix("Sw"){
            return true
        }
        else {
            return false
        }
    }
print(StratingCheck(string6))

//Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.

var string7: String = "Simform Solution"
var Prefix = string7.prefix(3)
var Char = string7.suffix(3)
print("Newly generated string is:\(Prefix)\(Char)")

//Multiline String

let MultiString: String = """
                            Hello How was your day today?
                            Hope well!!
                          """
print("Example of multilined string:\n\(MultiString)")

//Comapring strings using canonical representation
var string8 = "Hello world e\u{301}"
var string9 = "Hello world e\u{301}"
print(string8)
print(string8 == string9)

