//: [Previous](@previous)

import Foundation

//: [Previous](@previous)

import Foundation
//Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class

//Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it
class Demo {
    public private(set) var a: Int = 10
    private var str = "String"
    lazy var lazyString: String = "Vaghela Ramraj"
    
    var demo1: String = "demo"
    var demo2 = 10
    
    func getStr() -> String {
        return str
    }
    
     func typeMethodDemo() {
        print("Function from class demo ahs been called.")
    }
}
class ChildDemo : Demo {
    /*  override func typeMethodDemo() {
    //
        } */
}

//Create a swift program to demonstrate usage of computed properties using getter and setter

//Create one example of usage of willSet and didSet
class Circle {
    var radius: Double = 0 {
        willSet {
            print ("About to assign new value \(newValue)")
        }
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }
    }
    var area: Double {
        get {
            return radius * radius * Double.pi
        }
        set(newValue) {
            radius = sqrt(newValue / Double.pi)
        }
    }
}

//Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types
class Person {
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

class Human {
    var name : String
    var occupation : String
    var age : Int
    var gender : String
    
    init(name: String, occupation: String, age: Int, gender: String) {
        self.name = name
        self.occupation = occupation
        self.age = age
        self.gender = gender
    }
    
    subscript(humans:[Human], name: String) -> Human? {
        get {
            for human in humans {
                if human.name.elementsEqual(name) {
                    print("Name : \(human.name)")
                    print("Occupation : \(human.occupation)")
                    print("Age : \(human.age)")
                    print("Gender : \(human.gender)")
                    return human
                }
            }
            return nil
        }
    }
    
    func eat() {
        print("Human is eating")
    }
}

class Student : Human {
    var college : String
    init(name: String, occupation: String, age: Int, gender: String, college: String) {
        self.college = college
        super.init(name: name, occupation: occupation, age: age, gender: gender)
    }
    override func eat() {
        print("Student is eating")
    }
    func superEat() {
        super.eat()
    }
}
//Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance
class Employee : Human {
    var company : String
    init(name: String, occupation: String, age: Int, gender: String, company: String) {
        self.company = company
        super.init(name: name, occupation: occupation, age: age, gender: gender)
    }
    override func eat() {
        print("employee is eating")
    }
    func superEat() {
        super.eat()
    }
}
//Create one structure to show usage of mutating function in swift
struct MutatingStruct {
    var abc: String = "initial value"
    
    mutating func changeValue() {
        abc = "some other value"
    }
}
//Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week
class DaysOfWeek {
    let days = ["Monday", "Tuesday", "Wednesday",
                "Thursday", "Friday", "Saturday", "Sunday"]
    subscript(index: Int) -> String {
        get {
            if index < 8 {
                return days[index-1]
            } else {
                return "Invalid Input"
            }
        }
    }
    
    func getDay(at number: Int) -> String {
        return self[number]
    }
}

//Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position
class CharAtString {
    
    let str: String
    
    init(str: String) {
        self.str = str
    }
    subscript(ind: Int) -> Character{
        
        get {
            let array = Array(str)
            if ind <= str.count {
                return array[ind-1]
            }
            print("\(str) does not have \(ind) characters so, printing the last character at \(array.count)th position  ")
            return array[array.count - 1]
        }
    }
}
//Create one swift subscript program which takes range as input and returns the string between the ranges
class RangeOfString {
    
    subscript (str: String,from: Int, to: Int) -> String {
        get {
            let startIndex = str.index(str.startIndex, offsetBy: from-1)
            let endIndex = str.index(str.startIndex, offsetBy: to)
            let range: Range<String.Index> = startIndex..<endIndex
            return String(str[range])
        }
    }
}
//I have one integer array and create one function which takes range as input and returns all elements between the range.
class RangeOfArray {
    
    let array: [Int]
    
    init(array: [Int]) {
        self.array = array
    }
    
    subscript (from: Int, to: Int) -> [Int] {
        get {
            return Array(array[from...to])
        }
    }
}
// have one key value pair array. Create one function using subscript which takes key as input and returns it’s value
class DictionarySubScript {
    let dictArray = [
        [1:"Hello"],
        [2:"Hii"],
        [3:"Hola"],
        [4:"Namste"]
    ]
    
    subscript(key: Int) -> String {
        get {
            for i in dictArray {
                if let val = i.first(where: { $0.key == key})?.value {
                    return val
                }
            }
            return "Key Not Found"
        }
    }
}

//Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer
class Song {
    var name: String
    var lable: String
    
    init(name: String, lable: String) {
        self.name = name
        self.lable = lable
    }
    
    func getSong() {
        print("\(name) by \(lable) Music Lable")
    }
}

class HipHop : Song {
    var singer: String
    var composer: String
    var feature: String
    
    init(name:String, lable: String, singer: String, composer: String, feature: String) {
        self.singer = singer
        self.composer = composer
        self.feature = feature
        super.init(name: name, lable: lable)
    }
    
    override func getSong() {
        print("\(name) by \(singer) rapper featuring \(feature) from \(composer) in \(lable) music Lable.")
    }
}
class Classical : Song {
    var singer: String
    var composer: String
    
    init(name:String, lable: String, singer: String, composer: String) {
        self.singer = singer
        self.composer = composer
        super.init(name: name, lable: lable)
    }
    
    override func getSong() {
        print("\(name) by \(singer) singer from \(composer) in \(lable) music Lable.")
    }
}

func Task1() {
    let demo = Demo()
    print(demo.a)
    //demo.a = 10
}

func Task2() {
    let circle = Circle();
    circle.radius = 5;
    print(circle.radius)
    circle.area = 314.1592653589793
    print("Radius : \(circle.radius)")
    print("Area : \(circle.area)")
}

//Create a swift program to show usage of stored properties
func Task3() {
    var changableVar = 10;
    let constantVar = "String"
    print(changableVar)
    changableVar = 20
    print(changableVar)
    //constantVar = "STR"
    print(constantVar)
}

func Task4() {
    let demo = Demo()
    print(demo.getStr())
}

func Task5() {
    let personsArray = [Person(id: 100, name: "Steve"),Person(id: 101, name: "David"),Person(id: 102, name: "Ramraj")]
    print("ID\t\tName")
    for i in personsArray {
        print("\(i.id)\t\(i.name)")
    }
}

func Task6() {
    let circle = Circle();
    circle.radius = 5;
    print(circle.radius)
    circle.area = 314.1592653589793
    print("Radius : \(circle.radius)")
    print("Area : \(circle.area)")
}
func Task7() {
    let demo = Demo()
    print(demo.lazyString)
}
func Task8() {
    let student = Student(name: "Shubham", occupation: "Trainee/Student", age: 21, gender: "Male", college: "RK University")
    print("Name : \(student.name)")
    print("Occupation : \(student.occupation)")
    print("Age : \(student.age)")
    print("Gender : \(student.gender)")
    print("College : \(student.college)")
    
    let employee = Employee(name: "Ramraj", occupation: "Sr. Developer", age: 28, gender: "Male", company: "Simform Solutions")
    print("\nName : \(employee.name)")
    print("Occupation : \(employee.occupation)")
    print("Age : \(employee.age)")
    print("Gender : \(employee.gender)")
    print("Company : \(employee.company)")
}
func Task9() {
    var mutatingStruct =  MutatingStruct()
    print(mutatingStruct.abc)
    mutatingStruct.changeValue()
    print(mutatingStruct.abc)
}
func Task10() {
    let student = Student(name: "Ramraj", occupation: "Trainee", age: 21, gender: "Male", college: "L.D College of Engineering")
    student.eat()
    student.superEat()
    
    let employee = Employee(name: "Ramraj", occupation: "Sr. Developer", age: 28, gender: "Male", company: "Simform Solutions")
    employee.eat()
    employee.superEat()
}
func Task11() {
    let Demo1 = Demo()
    Demo1.typeMethodDemo()
}
// Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)

func Task12() {
    print("Cannot override static methods becuase Static methods binds relation during Compile time and class methods binds relation during run time")
}
func Task13() {
    let days = DaysOfWeek()
    days.getDay(at:7)
}
func Task14() {
    let charAt = CharAtString(str: "Simform")
    print(charAt[1])
    print(charAt[2])
    print(charAt[3])
    print(charAt[4])
    print(charAt[5])
    print(charAt[6])
    print(charAt[7])
    print(charAt[80])
}
func Task15() {
    let rangeOfString = RangeOfString()
    let str = "Simform Solutions"
    rangeOfString[str,9,12]
}
func Task16() {
    let hello = RangeOfArray(array: [12,14,1,7,3,7,4,67,43,67,43,783,86457,36])
    print(hello[3,10])
}
func Task17() {
    let dict = DictionarySubScript()
    print(dict[2])
}

//Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc
func Task18() {
    let humans = [Human(name: "Shubham", occupation: "Student", age: 21, gender: "Male"),Human(name: "RamRaj", occupation: "Developer", age: 28, gender: "Male"),Human(name: "Roma", occupation: "Trainee", age: 22, gender: "Female")]
    
    let human = Human(name: "Raj", occupation: "Student", age: 21, gender: "Male")
    human[humans,"Shubham"]
}
func Task19() {
    let hiphop = HipHop(name: "Pop Pop", lable: "Owned", singer: "Snoop Dogg", composer: "D Beatz", feature: "Da Baby")
    hiphop.getSong()
    
    let classical = Classical(name: "A thousand Years", lable: "The Extras", singer: "The Piano Guys", composer: "")
    classical.getSong()
    
    let song = Song(name: "Take Diss", lable: "Kalamkar")
    song.getSong()
    
}
//Create a swift class with properties which can be read-write outside of class
func Task20() {
    let demo = Demo()
    print(demo.demo1)
    demo.demo1 = "String"
    print(demo.demo1)
    print(demo.demo2)
}


// We will call all the methods from here
Task1()
Task2()
Task3()
Task4()
Task5()
Task6()
Task7()
Task8()
Task9()
Task10()
Task11()
Task12()
Task13()
Task14()
Task15()
Task16()
Task17()
Task18()
Task19()
Task20()

