//: [Previous](@previous)

import Foundation
//Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception

print("Error handling in swift")
class Task1{
    var username: String
    var pwd :String
    init(username: String, pwd: String){
        self.username = username
        self.pwd = pwd
    }
}
enum ErrorHandling: Error{
    case ShortPassword
    case EmptyPassword
}

func Login(username: String, pwd: String) throws {
    
    if pwd.count == 0 {
        throw ErrorHandling.EmptyPassword
    }
    if pwd.count < 8 {
        throw ErrorHandling.ShortPassword
    }
}

do{
    try Login(username:"Ramraj", pwd: "")
}   catch ErrorHandling.ShortPassword {
        print("Password is too short")
    }
catch ErrorHandling.EmptyPassword {
        print("Password is empty")
    }
    catch {
    print("There is an Exception!!!")
}

//Create a program for shopping cart. If desired quantity for an item is not available, throw exception

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
