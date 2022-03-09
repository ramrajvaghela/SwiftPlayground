
import Foundation

//Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.

enum Days: Int, CaseIterable {
    case MONDAY = 1
    case TUESDAY = 2
    case WEDNESDAY = 3
    case THURSDAY = 4
    case FRIDAY = 5
    case STAURDAY = 6
    case SUNDAY = 7
}
func ReturnDays(day: Int) {
    switch day {
    case 1:
        print("Today is Monday")
    case 2:
        print("Today is Tuesday")
    case 3:
        print("Today is Wednesday")
    case 4:
        print("Today is Thursday")
    case 5:
        print("Today is Friday")
    case 6:
        print("Today is Saturday")
    case 7:
        print("Today is Sunday")
    default:
        print("There is no such day")
    }
}
ReturnDays(day: 5)
ReturnDays(day: 9)

//Create one enumeration program to return number of days in a month

enum Months: Int, CaseIterable {
    case JANUARY = 1
    case FEBRUARY = 2
    case MARCH = 3
    case APRIL = 4
    case MAY = 5
    case JUNE = 6
    case JULY = 7
    case AUGUST = 8
    case SEPTEMBER = 9
    case OCTOBER = 10
    case NOVEMBER = 11
    case DECEMBER = 12

}
func ReturnMonths(month: Int) {
    let Dict: [Int] = [31,28,31,30,31,30,31,31,30,31,30,31]
    switch month {
    case 1:
        print("January has \(Dict[0]) days")
    case 2:
        print("February has \(Dict[1]) days")
    case 3:
        print("March has \(Dict[2]) days")
    case 4:
        print("April has \(Dict[3]) days")
    case 5:
        print("May has \(Dict[4]) days")
    case 6:
        print("June has \(Dict[5]) days")
    case 7:
        print("July has \(Dict[6]) days")
    case 8:
        print("August has \(Dict[7]) days")
    case 9:
        print("September has \(Dict[8]) days")
    case 10:
        print("October has \(Dict[9]) days")
    case 11:
        print("November has \(Dict[10]) days")
    case 12:
        print("December has \(Dict[11]) days")
    default:
        print("There is no such month")
    }
}
ReturnMonths(month: 1)
ReturnMonths(month: 9)
ReturnMonths(month: 14)

//Write a swift program using enumerations to demonstrate Int enums

enum Days2: Int, CaseIterable {
    case MONDAY = 1
    case TUESDAY = 2
    case WEDNESDAY = 3
    case THURSDAY = 4
    case FRIDAY = 5
    case STAURDAY = 6
    case SUNDAY = 7
}
func ShowDays(day: Int) {
    switch day {
    case 1:
        print("Today is Monday")
    case 2:
        print("Today is Tuesday")
    case 3:
        print("Today is Wednesday")
    case 4:
        print("Today is Thursday")
    case 5:
        print("Today is Friday")
    case 6:
        print("Today is Saturday")
    case 7:
        print("Today is Sunday")
    default:
        print("There is no such day")
    }
}
ShowDays(day: 2)
ShowDays(day: 8)

//Write a swift program to demonstrate string type enum
enum Direction: String, CaseIterable {
    case up = "up"
    case down = "down"
    case left = "left"
    case right = "right"
}
func face(position: Direction){
    switch position{
    case Direction.up: print("My Direction is towards:",(Direction.up.rawValue))
    case Direction.down: print("My Direction is towards:",(Direction.down.rawValue))
    case Direction.left: print("My Direction is towards:",(Direction.left.rawValue))
    case Direction.right: print("My Direction is towards:",(Direction.right.rawValue))
    
    }
    
}
face(position: Direction.right)
//Write a swift program for enum with raw values
enum Size : Int {
  case small = 10
  case medium = 12
  case large = 14
}

var result = Size.small.rawValue
print(result)
result = Size.large.rawValue
print(result)

//Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory)
var mon = Months.allCases // returns an array
print(mon)
var count = Months.allCases.count
print(count)// will return total elements
//allCases is a collection, so it has all the usual properties and capabilities, like count, map, and so on:

//Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).

enum Distance {
  
  case km(String)
  case miles(String)
  case grade (String, String, String)
}

var dist1 = Distance.km("Distance in Kilometers")
print(dist1)
var dist2 = Distance.miles("Distance in Miles")
print(dist2)
//passing multiple values
var marks2 = Distance.grade("A", "B", "C")
print(marks2)

// Create an enum with its rawValues of type String and show usage of case to print value of case.

 
