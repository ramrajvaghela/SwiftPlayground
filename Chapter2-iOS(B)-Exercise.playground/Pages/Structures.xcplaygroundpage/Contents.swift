import Foundation

//Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.

print("Struct in swift")
struct Work {
    var WorkLocation: String
    var WorkHrs: Int
    var ProjectNames: [String] = ["Developed a Game","Developed an Android application","Developed an iOS application","Selected my own definition"]
    func Project() {
        print("Project definitions are")
        for ProjectName in ProjectNames {
            print(ProjectName)
        }
    }
}
let myWork = Work(WorkLocation: "Ahmedabad", WorkHrs: 12)
print("Work Location is:\(myWork.WorkLocation)","and work hours are:\(myWork.WorkHrs)")
myWork.Project()

//Create a structure example which demonstrates use of initializer in structures.

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}
var C1 = Color(red: 2.0, green: 3.0, blue: 5.0)
print("Values of RGB are :\(C1.red) : \(C1.green) : \(C1.blue)")

//Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.

struct Task3 {
    var temperature: Double?
    var location: String?
}
var T1 = Task3(temperature: nil , location: "Ahmedabad")//initilaized without parameters
var T2 = Task3(temperature: 38, location: "Delhi")//initilaized with both the parameters
print(T1)
print(T2)


//Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers

struct Task4 {
    func OddEven(){
        let arr = [1,3,5,6,9,7,8,12]
        print("Original Array : \(arr)")
        
        let EvenArr = arr.filter { $0 % 2 == 0 }
        print("Even Array:\(EvenArr)")
        
        let OddArr = arr.filter { $0 % 2 != 0 }
       print("Odd Array :\(OddArr)")
    }
}
var T4 = Task4()
T4.OddEven()

//Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array

struct Task5 {
    var name: String
    var age: Int
    var gender: String
}
    var persons = [Task5(name:"Joe",age:27, gender:"Male"), Task5(name:"Harry", age:21, gender:"Male")]
    func details() {
    for person in persons {
        print("Name:\(person.name) gender \(person.gender) age \(person.age)")
    }
}
details()

//Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output

struct Task6 {
    var str: String
    init(str: String){
        self.str = str
    }
}
    var property1 = Task6(str: "hello")
    property1.str = "Hello"
    var property2 = property1
    property2.str = "Hi"
    print(property1.str)
    print(property2.str)


