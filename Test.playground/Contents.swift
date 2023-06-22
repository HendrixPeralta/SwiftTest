import UIKit

// Variables declaration
var ages = [21, 42, 54, 23, 75, 97]
var array: [Int] = []

ages.append(34)
print(ages)

var agesSet = Set(ages)
agesSet.contains(42)


// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Key - Values

let devices: [String:String] = [
    "phone": "Google Pixel",
    "laptop": "2020 MacBook Air",
    "tablet": "None",
    "desktop": "None",
]

devices["laptop"]

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Functions

func printInstructor(name: String){
    print(name)
}
printInstructor(name: "Hendrix Peralta")

// argument labels, and parameter labels
func addNumbers(firstNumber: Int, to secondNumber: Int) -> Int{ // the "to" is an argument label and makes the call site more readable // the "to" can actually be any word
  let result = firstNumber + secondNumber
    return result
}
addNumbers(firstNumber: 3, to: 5) // call site

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// if / else

var isDarModeOn = true

if isDarModeOn == true {
    print("That's how it should be")
} else {
    print("You are a psyco")
}

var myHighScore = 444
var yourHighScore = 444

if myHighScore > yourHighScore {
    print("I win")
}else if myHighScore < yourHighScore{
    print("You win")
}else {
    print("Draw")
}

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// for loops
