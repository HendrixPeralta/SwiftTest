import UIKit

// Variables declaration
var ages = [21, 42, 54, 23, 75, 97]
var array: [Int] = []

ages.append(34)
//print(ages)

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
    //print(name)
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
    //print("That's how it should be")
} else {
   // print("You are a psyco")
}

var myHighScore = 444
var yourHighScore = 444

if myHighScore > yourHighScore {
   // print("I win")
}else if myHighScore < yourHighScore{
   // print("You win")
}else {
   // print("Draw")
}

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// for loops

let allStars = ["james", "Davis", "Harden", "Doncic", "Leonard"]

for player in allStars {
    print(player)
}

for player in allStars where player == "Harden"{ // you can add a condition to the for loop
    print("your player is: ", player)
}

// for with ranges
for i in 0..<25 { //this range does not include 25 to include 25 you can write 0...25
    print(i)
}

var randomInts: [Int] = []
for _ in 0..<25 { // if you dont use i inside the scope is better to replace i with _
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
print(randomInts)

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// enum

enum Days { // the cases can be all in just one line if you separete them by commas
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

func getCurrentDay(on day : Days) {
    if day == .Friday {
        print("No se que dia es pero el cuerpo lo sabea")
    }else if day == .Monday {
        print("Un dia triste lo se")
    }else if day == .Wednesday {
        print("Cuando se acaba la semana?")
    }else if day == .Saturday {
        print("Hora de buscar a alguien")
    }
}
getCurrentDay(on: .Saturday)

enum DaysClean: String { // now the enum has a String value
    case Monday = "Primer dia triste lo se"
    case Tuesday = "Un dia triste lo se"
    case Wednesday = "Cuando se acaba la semana?"
    case Thursday = "Cuarto dia triste lo se"
    case Friday = "No se que dia es pero el cuerpo lo sabe"
    case Saturday = "Hora de buscar a alguien"
    case Sunday = "Un dia antes de ser triste lo se"
}

func getCurrentDayClean(on day : DaysClean) {
    print(day.rawValue)
}
getCurrentDayClean(on: .Friday)

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Switch


enum DaysSwitch { // the cases can be all in just one line if you separete them by commas
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

func getDaySwitch(on day : DaysSwitch) {
    
    switch day {
    case .Monday :
        print("Primer dia triste lo se")
    case .Tuesday :
        print("Un dia triste lo se")
    case .Wednesday :
        print("Cuando se acaba la semana?")
    case .Thursday :
        print("Cuarto dia triste lo se")
    default:
        print("Its almost Weekend") // if you use all the cases you dont need to add the default option
    }
}
getDaySwitch(on: .Saturday)
