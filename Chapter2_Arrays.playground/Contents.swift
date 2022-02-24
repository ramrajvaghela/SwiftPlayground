import UIKit

//Write a Swift program to check whether the first element and the last element of a given array of integers are equal.The array length must be 1 or more

let arr = [1,3,4,6,7,8,9,0,1]
if(arr.first == arr.last){
    print("Both first and last element are same \n\(arr[0]) \(arr[8])")
}
else if(arr.first != arr.last){
    print("Elements are different\n \(arr[0]) \(arr[8])")
}

//Write a Swift program to create a new array with double the lenght of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.

var arr2 = [1,2,3,4]
var len = arr2.count
var sufix: Int = arr2[len - 1]
var newArr: [Int] = []

if arr2.isEmpty
{
    print("Array is empty")
}
else {
    print("Array is")
    for _ in 0...(len * 2)-1{
        newArr.append(0);
    }
    newArr[newArr.count - 1] = sufix
    print(newArr)
}

//Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array

var arr3 = [28,34,55,78]
var len2 = arr3.count
if len2 < 2 {
    print("There is only single element:\(arr3)")
}
else if len2 > 2 {
    print("Elements are:\n\(arr3.prefix(2))")
}


//Write a Swift program to take one array and find out maximum number from that array
var max: Int? = arr3.max()
print("Max value from array 3 is:\(max!)")


//Write a Swift program to take one array and sort it in descending order.
public var arr4 = [234,456,789,01]
print(arr4.sorted())// ascending order

//descending order

func DescendingOrder(arr4: [Int]) -> [Int] {
    var ArrayDescend : [Int]
    ArrayDescend = arr4
    for i in stride(from :0 ,to: ArrayDescend.count, by :1){
        var temp: Int = 0
        for j in stride(from :i ,to: ArrayDescend.count, by :1){
            if arr4[j] > arr4[i]{
                temp = ArrayDescend[i]
                ArrayDescend[i] = ArrayDescend[j]
                ArrayDescend[j] = temp
            }
        }
        
    }
    print("Descending order array is\(ArrayDescend)")
    return ArrayDescend
}
DescendingOrder(arr4: arr4)
