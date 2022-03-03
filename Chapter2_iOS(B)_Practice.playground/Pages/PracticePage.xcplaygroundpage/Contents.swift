import UIKit
func Transport(){
    
    // Set in swift
    var Cars: Set<String> = ["Nissan", "BMW", "Audi", "Hyundai"]
    Cars.insert("Nissan")// appears false as Nissan is already a part of Set
    Cars.insert("Honda") // gets inserted in set
    
    //Union
    let Bike: Set<String> = ["BMW", "Honda" ,"Yamaha","Hyundai"]
    let UnionVehicle: Set<String>
    UnionVehicle = Cars.union(Bike)
    print("Union of two sets is:\(UnionVehicle)")
    
    //Intersection
    var IntersectVehcile : Set<String>
    IntersectVehcile = Cars.intersection(Bike)
    print("Intersection of two sets is:\(IntersectVehcile)")
    print("Total number of cars are:\(Cars.count)")
    print("Total number of bikes are:\(Bike.count)")
    
    //Integer Set
    let NumSet1: Set<Int> = [23,21,22,45,67,88]
    let NumSet2: Set<Int> = [23,21,34,45,78,90]
    var SubtractSet: Set<Int>
    SubtractSet = NumSet1.subtracting(NumSet2)
    print("Subtraction in set is:\(SubtractSet)")
    NumSet1.intersection(NumSet2)
}
Transport()

//Functions in swift
print("Odd Even example")
func isEven(squareNumber num1: Int) -> Bool{
    if num1 % 2 == 0{
        print("\(num1) is even")
        return true
    }
    print("\(num1) is odd")
    return false
}
print(isEven(squareNumber:  1))
print(isEven(squareNumber:  12))
//Square
print("Square of number")
func isSquare(_ num2: Int) -> Int{
    let result  = num2 * num2
    print("Square is:",result)
    return result
}

isSquare(4)

func returnExam(_ a: Int, _ b: Int) -> (min: Int,max: Int) {
    
    if a>b {
        return (b,a)
    }
    return (a,b)
}

print(returnExam(2,3).max)
print(returnExam(2,3).min)


var temp = 3
temp
func inOut(a: inout Int) {
    a = 4;
    print(a*a)
    
}
inOut(a: &temp)
temp


//Varidic Parameter in Function
func max<N>(mem: N...) -> Int {
    
    var maximum = 0
    for i in mem {
        if maximum < i as! Int {
            maximum = i as! Int
        }
    }
    return maximum
}

print(max(1,2,3,4,5,6))
print(max(4,67,1))

//Class in Swift
print("Class in Swift::::::")
class Student {
    var Name: String = ""
    var Age: Int = -1
    var Semester = -1
    var salary = -1
    
    func increaseSemester(){
        if Semester != -1 {
            Semester += 1
            print("Incremented semester is:\(Semester)")
        } else {
            print("Semester N/A")
        }
    }
}

var const: Student = Student()
const.Age = 20
const.Name = "Ramraj"
const.Semester = 6
print(const.Name)
const.increaseSemester()

//Enum in Swift
print("Enum in swift::::::")

enum Friends : String, CaseIterable{
    case Ross = "Hi I'm Ross"
    case Rachel = "Hi My name is Rachel"
    case Joey = "Hi My name is Joey"
    case Chandler = "Hi My name is Chandler"
    
}
//print(Friends.Ross.rawValue)
for friend in Friends.allCases {
    print(friend.rawValue)
}

enum Direction {
    case Left (angle: Int)
    case Right (angle: Int)
    case Up (angle: Int)
    case Down (angle: Int)
}

func Direct (for way: Direction){
    switch way {
    case .Left(angle: let angle) where angle >= 30 && angle < 35:
        print("Your direction is left")
    case .Right(angle: let angle) where angle >= 40 && angle < 55:
        print("Your direction is Right")
    case .Up(angle: let angle) where angle >= 60 && angle < 75:
        print("Your direction is Up")
    case .Down(angle: let angle) where angle >= 80 && angle < 95:
        print("Your direction is Down")
    case .Left, .Right , .Up , .Down :
        print("There is no direction")
        
    }
}
Direct(for: .Left(angle: 33))
Direct(for: .Down(angle: 88))

//Struct example in swift
print("Struct in swift")
struct MyPhone{
    var Model:String
    var Color:String
}
let myphone = MyPhone(Model:"Samsung M31",Color:"Black")
var stolenPhone = myphone
stolenPhone.Color = "Blue"
print(myphone.Color)

//Properties in swift
print("Properties in Swift::::::")
print("Stock Property")

class Property{
    var num1: Int = 0 {
        didSet{
            if num1 > 10 {
                print("New value of num1 is:\(num1)")
            } else {
                num1 = oldValue
            }
        }
        willSet{
            
            print("\(newValue) will set after this method")
            
        }
        
    }
//Read Only computed Property
    var num2: Int {
            
        return num1 + 20
    }
}

var P1 = Property()
P1.num1 = 12
print(P1.num1)
print(P1.num2)

//Methods in swift
class Method{
    var count = 0
    func increment (by no: Int){
        count += no
    }
    func decrement (by no: Int){
        count -= no
    }
    func multi (by no: Int){
        count *= no
    }
}

var M1 = Method()
M1.increment(by: 4)
print("Incremented value is:\(M1.count)")

M1.decrement(by: 3)
print("Decremented value is:\(M1.count)")

M1.multi(by: 30)
print("Multiply value is:\(M1.count)")

//Subscript in swift

//inheritance in swift and init function in swift

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
        c3.f1()
        c3.f2()
        c3.f4()
    }
}

var T1 = TestHybrid()
T1.test()

print("** Call form Child Class **")
var A1 = AndroidDeveloper(Name: "Ramraj", YearsOfExp: 4, JobRole: "Engineer")
A1.Introduction()
A1.Android()

//Optional Chaining in swift
print("Optional Chaining in Swift:::::")

func OptionalChaining(year: Int) -> String? {
    switch year{
        case 2010 : return "School"
        case 2016 : return "In 10th standard"
        case 2017 : return "Pursuing Diploma"
        case 2019 : return "BE in Computer Engineering"
        default : return nil
    }
}

var call = OptionalChaining(year: 2019)?.uppercased()
print(call)

//Error Hnadling in Swift
print("Error handling in swift")
class User{
    var name: String
    var availBalance: Int
    init(name: String, availBalance: Int){
        self.name = name
        self.availBalance = availBalance
    }
}

class Apple{
    var stock: Int
    var price: Int
    init(stock: Int, price: Int){
        self.stock = stock
        self.price = price
    }
}

let ramraj = User(name: "Ramraj", availBalance: 1000)
let iPhone = Apple(stock:10, price:100)

enum PurchaseError: Error{
    case LowBalance
    case NoStock
}

func Purchase(user: User, item: Apple) throws {
    if user.availBalance < item.price {
        throw  PurchaseError.LowBalance
    }
    if item.stock == 0 {
        throw PurchaseError.NoStock
    }
    user.availBalance -= item.price
    item.stock -= 1
    print("Item is purchased successfully by:\(user.name)")
    print("Available balance is:\(user.availBalance)")
    print("Stock left:\(item.stock)")
}

do{
    try Purchase(user: ramraj , item: iPhone)
}   catch PurchaseError.LowBalance {
        print("Low Balance, Please add balance to purchase this item")
    }
    catch PurchaseError.NoStock {
        print("No stock available for this item")
    }
    catch {
    print("There is an Exception!!!")
}

// Typecasting in swift
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Golmaal", director: "Rohit Shetty"),
    Song(name: "Main Koi aisa geet gaoon", artist: "Jatin Lalit"),
    Movie(name: "Phir hera Pheri", director: "Neeraj Vora"),
    Song(name: "Phir hera Pheri", artist: "Himesh Reshamiya"),
]

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

//Downcasting
for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}


