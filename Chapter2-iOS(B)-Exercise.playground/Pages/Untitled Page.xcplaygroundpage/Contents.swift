//: [Previous](@previous)
import Foundation
//Add a character in a string at 5th position
extension String {
   mutating func AddCharacter(char: Character) {
        let index = self.index(self.startIndex, offsetBy: 5)
        self.insert(char, at: index)
        print(self)
   }
    //Replace one character with other in a string

    mutating func ReplaceCharacter() {
        let range = self.startIndex..<self.index(after: self.startIndex)
         let newString = self.replacingCharacters(in: range, with: "F")
         print(newString)
    }
    //Remove white spaces from string
    func Space(){
        if self.contains(" ") == true {
        let GeneratedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        print(GeneratedString)
        }
        
    }s
    func CountWords(){
        let components = self.components(separatedBy: .whitespacesAndNewlines)
        let words = components.filter { !$0.isEmpty }
        print(words.count)  // 17
    }
}
var Task1 = "Hello"
Task1.AddCharacter(char: "X")

var Task2 = "Hello Ramraj"
Task2.ReplaceCharacter()

var Task3 = "     Hello What should I do ? "
Task3.Space()
Task3.CountWords()



