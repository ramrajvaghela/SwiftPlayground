import UIKit
print("Dictionaries")
/*
 You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string
 */

var code = [
"a" : "b",

"b" : "c",

"c" : "d",

"d" : "e",

"e" : "f",

"f" : "g",

"g" : "h",

"h" : "i",

"i" : "j",

"j" : "k",

"k" : "l",

"l" : "m",

"m" : "n",

"n" : "o",

"o" : "p",

"p" : "q",

"q" : "r",

"r" : "s",

"s" : "t",

"t" : "u",

"u" : "v",

"v" : "w",

"w" : "x",

"x" : "y",

"y" : "z",

"z" : "a",
]

var encodedMessage = "uijt nfttbhf jt ibse up sfbe5"
for i in encodedMessage {
    if let key = code.first(where: {$0.value == String(i)})?.key {
        print(key,terminator: "")
    }
    else if String(i) == " " {
        print(" ",terminator: "")
    }
    
}

//You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.

var people: [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[

"firstName": "Noel",

"lastName": "Bowen"

]

]


func getFirstName(people: [[String:String]]) {
    
    var firstNames: [String] = []
    for i in people {
        
        if let val = i.first(where: { $0.key == "firstName"})?.value {
            firstNames.append(val)
        }
    }
    print(firstNames)
}

//You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.

fullName(people: people)

func fullName(people: [[String:String]]) {
    
    var names: [String] = []
    var fullName = ""
    for i in people {
        
        if let val = i.first(where: { $0.key == "firstName"})?.value {
            fullName = val;
        }
        if let val = i.first(where: { $0.key == "lastName"})?.value {
            fullName += " " + val;
        }
        names.append(fullName)
    }
    print("\n",names)
}


//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.

var students: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 12

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]

getWeakestStudent(people:students)
func getWeakestStudent(people: [[String:Any]]) {
    
    var score = 200
    var fullName = ""
    for i in people {
        
        if let val = i.first(where: { $0.key == "score" && ($0.value as! Int) < score})?.value {
            
            if let val = i.first(where: { $0.key == "firstName"})?.value {
                fullName = val as! String
            }
            if let val = i.first(where: { $0.key == "lastName"})?.value {
                fullName += " " + (val as! String)
            }
            score = val as! Int;
        }
        
    }
    print("Student with lowest mark is: \(fullName)")
}

//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:
getStudentList(people: students)
func getStudentList(people: [[String:Any]]) {
    
    var fullName = ""
    var id = 1
    for i in people {
        if let val = i.first(where: { $0.key == "firstName"})?.value {
            fullName = String(id) + " " + (val as! String)
        }
        if let val = i.first(where: { $0.key == "lastName"})?.value {
            fullName += " " + (val as! String)
        }
        if let val = i.first(where: { $0.key == "score"})?.value {
            fullName += " " + String((val as! Int))
        }
        id += 1
        print(fullName)
    }
}

//You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.

getFreq()

func getFreq() {
    print("Numbers in ascending orders with frequency are as follows:")
    let numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
    var dict: [Int:Int] = [:]
    
    
    for i in 0...numbers.count-1 {
        
        if(dict[numbers[i]] == nil) {
            dict[numbers[i]] = 0
        }
        dict[numbers[i]]! += 1;
    }
    
    let keys = dict.keys.sorted()
    
    for i in keys {
        print("\(i)  \(dict[i]!)")
    }
}
