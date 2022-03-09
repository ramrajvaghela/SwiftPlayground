import UIKit
//Print the powers of 2 that are less than or equal to N.
var no1: Int = 100
var temp = 1
print("Power of 2 is:")
for _ in 1...no1{
    if (temp*2 > no1){
        break
    } else {
            temp = temp * 2
            print(temp)
    }
}

//Given an integer N draw a square of N x N asterisks. Look at the examples.
print("square of N x N asterisks.")
var n: Int = 3
for _ in 1...n {
    for _ in 1...n{
        print("*", terminator: " ")
    }
    print("")
}

//Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.
print("triangle of asterisks")
var num: Int = 5
for i in 1...num {
    for _ in 1...i{
        print("*", terminator:" ")
    }
    print("")
}

//Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks

var num2: Int = 6
var temp2 = 0
print("Pyramid")
for rows in 1...num2 {
    temp2 = 0
    for _ in stride(from: 1, to: num2-rows+1, by: 1){
        print(" ",terminator:"")
    }
    while (temp2 != (rows*2)-1){
        print("*",terminator:"")
        temp2 += 1
    }
    print("")
}

//You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).
print("Prime number")
var prime = 17
var k = 0
for i in 1...prime{
    if prime % i == 0 {
        k += 1
    }
}
if(k>2)
{
    print("\(prime) is not prime")
}
else {
    print("\(prime) is prime")
}
