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
