import Foundation

//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
print("*** Class Examples ***")
class Task1 {
    var num1: Int = 20
    var name: String = "Vaghela Ramraj"
}

var E1 = Task1()
print(E1.num1)
print(E1.name)

//Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.

class Task2 {
            
        var Name: String
        var College: String?
        var Department: String?
    
    init(Name: String, College: String?) {
        self.Name = Name
        self.College = College
    }
    
    init(Name: String, Department: String?) {
        self.Name = Name
        self.Department = Department
    }
}

var M1 = Task2(Name: "Vaghela Ramraj", College: "L.D College Of Engineering")
print(M1.Name, M1.College ?? "N/A")
var M2 = Task2(Name: "Vaghela Ramraj", Department: "Computer")
print(M2.Name, M2.Department ?? "N/A")

//Create a swift class without initializers and access (write, read) its properties using instance of class.

class Task3 {
     
        var EmpId: Int = 101
        var EmpName : String = "Kavan Trivedi"
}
var T3 = Task3()
print(T3.EmpId , T3.EmpName)
T3.EmpId = 102
T3.EmpName = "Harsh"
print(T3.EmpId , T3.EmpName)

//Create a swift class which is having code to return square of given number and access this code using class instance.

class Task4 {
    func SquareOfNumber(Num: Int) {
        print("Square of given number is \(Num * Num)")
    }
}
var T4 = Task4()
T4.SquareOfNumber(Num: 12)

//Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.

print("Inheritance in swift:::::")
class Developer {
    var Name:String
    var YearsOfExp: Int
    var JobRole: String
    
    init(Name: String, YearsOfExp: Int, JobRole: String ) {
        self.Name = Name
        self.YearsOfExp = YearsOfExp
        self.JobRole = JobRole
    }
    func Introduction() {
        print("My name is:\(Name) and I'm an: \(JobRole)")
    }
}
print("** Call from Parent Class **")
var D1 = Developer(Name: "Ramraj", YearsOfExp: 1, JobRole: "Engineer")
D1.Introduction()

class AndroidDeveloper: Developer{
    var AndroidExp: Int?
    
    func Android(){
        print("Im having \(AndroidExp ?? 2) in android")
    }
}
class Parent {
    func f1(){
        print("Hello from function1")
    }
}

class Child1: Parent {
    func f2(){
        print("Hello from function2")
    }
}

class Child2: Parent {
    func f3(){
        print("Hello from function3")
    }
}

class Child3: Child1{
    func f4(){
        print("Hello from function4")
    }
}
class TestHybrid {
    func test() {
        let c3 = Child3()
        let c2 = Child2()
        c3.f1()
        c3.f2()
        c3.f4()
        c2.f3()
    }
}

var T1 = TestHybrid()
T1.test()

print("** Call form Child Class **")
var A1 = AndroidDeveloper(Name: "Ramraj", YearsOfExp: 4, JobRole: "Engineer")
A1.Introduction()
A1.Android()

//Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

class Cars {
    var Model: String
    var Brand: String
    init(Model: String, Brand: String){
        self.Model = Model
        self.Brand = Brand
    }
    func DrivingCar(){
        print("Car is being Drived")
    }
    func StoppedCar(){
        print("Car is Stopped")
    }
    func DoorsOpen(){
        print("Doors are open")
    }
}

var C1 = Cars(Model: "320d", Brand: "BMW")
print("From Parent class \(C1.Brand)")
C1.DrivingCar()
C1.StoppedCar()
C1.DoorsOpen()

class NewCar: Cars {
    
    func AllWheelDrive() {
        print("Yes My car is 4 wheel drive")
    }
    func ColorOfCar() {
        print("My car color is Grey")
    }
   override func DoorsOpen(){
        print("Door of child's car are open")
    }
}
var N1 = NewCar(Model: "GLS", Brand: "Mercedes")
print("From Child class \(N1.Brand)")
N1.AllWheelDrive()
N1.ColorOfCar()
N1.DoorsOpen()

//Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
//example:  let instance = Example(value: 5)
  //  let result = instance.doPower(power: 3)
// then it should return 5's 3 power (125)

class Task6 {
    var Number: Int
    var Power: Int
    var Result: Int = 1
    init (Number: Int, Power: Int) {
        self.Number = Number
        self.Power = Power
        while self.Power != 0 {
            Result *= self.Number
            self.Power -= 1
        }
        print("Power of \(self.Number) is: \(Result)")
    }
}
var T6 = Task6(Number: 5, Power: 3)

//Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
class Vehicle {
    func TyresOfVehcile(wheels: Int, YearOfModel: Int) {
        print("Number of wheels are \(wheels) and Model is \(YearOfModel)")
    }
    func NumberPlate(no: Int) {
        print("My vehicle Number is \(no)")
    }
}
class Car: Vehicle {
    override func TyresOfVehcile(wheels: Int, YearOfModel: Int) {
        print("Number of wheels in Car are \(wheels)")
        print("Model of my car is \(YearOfModel)")
    }
    override func NumberPlate(no: Int) {
        print("My Car Number is \(no)")
    }
    func Capacity() {
            print("5 person can sit in my car")
    }
}
class Bike: Vehicle {
    override func TyresOfVehcile(wheels: Int, YearOfModel: Int) {
        print("Number of wheels in Bike are \(wheels)")
        print("Model of my Bike is \(YearOfModel)")
    }
    override func NumberPlate(no: Int) {
        print("My Bike Number is \(no)")
    }
    func Capacity() {
        print("Only 2 person can sit on bike")
    }
}
//calling Child1 - Cars
var car = Car()
car.NumberPlate(no: 1234)
car.TyresOfVehcile(wheels: 4, YearOfModel: 2012)
car.Capacity()

//calling Child2 - Bike
var bike = Bike()
bike.NumberPlate(no: 5678)
bike.TyresOfVehcile(wheels: 2, YearOfModel: 2019)
bike.Capacity()

//Create a person swift class with person name initializer and create one function to greet that person.

class Person {
    var person: String
    init(person: String){
        self.person = person
    }
    func greet() {
        print("Hello \(person)")
    }
}
var P1 = Person(person: "Trisha")
P1.greet()

//Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
class Property {
    var str: String
    init(str: String){
        self.str = str
    }
}
    let property1 = Property(str: "hello")
    property1.str = "Hello"
    let property2 = property1
    property2.str = "Hi"
    print(property1.str)
    print(property2.str)

