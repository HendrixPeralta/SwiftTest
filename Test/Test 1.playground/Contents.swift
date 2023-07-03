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
/*
for player in allStars {
    print(player)
}
*/
for player in allStars where player == "Harden"{ // you can add a condition to the for loop
    print("your player is: ", player)
}

// for with ranges
/*
for i in 0..<25 { //this range does not include 25 to include 25 you can write 0...25
    print(i)
}
*/
var randomInts: [Int] = []
for _ in 0..<25 { // if you dont use i inside the scope is better to replace i with _
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
//print(randomInts)

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
//getCurrentDay(on: .Saturday)

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
//getCurrentDayClean(on: .Friday)

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Switch

// Switch + enum
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
//getDaySwitch(on: .Saturday)

// Switch NOT enum

let matchMakingRank = 45

func determinePlayerLeague(from rank: Int) {
    switch rank {
    case 0:
        print("Play the game to determine your league")
    case 1..<100:
        print("You are in Bronze league")
    case 100..<250:
        print("You are in Silver league")
    case 250..<500:
        print("You are in Gold your league")
    default:
        print("You are too strong to measure your level")
    }
}
determinePlayerLeague(from: matchMakingRank)

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Operators

let suma = 45 + 34
let resta = 23-22
let division = 33/12 // only gives back and int value unless both numbers are float type
let divisionFloat = 33.0/12.0

let number: Double = 33
let number2: Double = 12
let division3 = number/number2


let multiplication = 33*12
let modulo = 3%5

var counter = 0
counter += 1
counter -= 1
let greeting = "Hello"
let name = "Sean"

print(greeting + " " + name)

let agesYoung = [2, 6, 9]
let agesOld = [35, 67, 87]

let allAges = agesYoung + agesOld
print(allAges)

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Optionals

var ages2 = [21, 45, 18, 71, 23, 44, 17]
ages2.sort()

var agesNull: [Int] = []
agesNull.sort()
let oldestAgeNull = agesNull.last // optional can handle null in case the array is empty

//  if let
if let oldestAge = ages2.last {
    print("The oldest age is \(oldestAge)")
}else {
    print("theres is no values in the array")
}

if let oldestAge = agesNull.last {
    print("The oldest age is \(oldestAge)")
}else {
    print("theres is no values in the array")
}

// nill coalescing

let oldestAge = ages2.last ?? 999 // if oldestAge has a value it does nothing but if its nill it gives it a value of 999

// guard statement
func getOldestAge(){
    guard let oldestAge = ages2.last else{ // checks if oldestAge is null if so it returns
        return
    }
    print("Return of the fuction is \(oldestAge)")
    // here goes extra code that wont be run if the guard statement is false
}
getOldestAge()

// force unwrap

let oldestAgeForce = ages2.last! // the exclamation point at the end forces the program to use the value. It does not matter if its nill (this can lead to crashes)

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Class

class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int? // is you add the interrogation sign it becomes optional (accepts nill values) it didnt work
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func tellStory(){
        print("This is a story you told me hehe - by ")
        print(name!)
    }
    
    func speakName(){
        print("The name is:", name!)
    }
}

let hendrix = Developer(name: "Hendrix", jobTitle: "DataScientist", yearsExp: 1)

hendrix.name
hendrix.jobTitle
hendrix.yearsExp

hendrix.name = "Peralta" // you can change the values
hendrix.name

//hendrix.tellStory()


// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Inheritance

class IOSDeveloper: Developer {
    var favoriteFramework: String?
    
    func speakFavoriteFramework(){
        if let favoriteFramework = favoriteFramework {
            print("My favorite framework is:", favoriteFramework)
            return
        }else {
            print("I dont  have a favorite framework")
            return
        }
        
    }
    
    override func speakName(){
        print("\(name!) - \(jobTitle!)")
    }
}

let ema = IOSDeveloper(name: "Ema", jobTitle: "IOS Developer", yearsExp: 5)

ema.favoriteFramework = "ARkit"
ema.speakFavoriteFramework()
ema.speakName()
//hendrix.speakName()

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Struct
// Struct are value types -> does not reference the original data type
// Classes are reference types -> reference the original data type

// reference type
var pedro = Developer(name: "Pedro", jobTitle: "Almost developer", yearsExp: 2)
var juan = pedro

juan.name // refenrece the first declaration of pedro

juan.name = "Pepe"

pedro.name // when we changed the name of juan also the name of pedro

// Value type

struct Developer_struct {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int? // is you add the interrogation sign it becomes optional (accepts nill values) it didnt work
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func tellStory(){
        print("This is a story you told me hehe - by ")
        print(name!)
    }
    
    func speakName(){
        print("The name is:", name!)
    }
}

var mami = Developer_struct(name: "Rosa", jobTitle: "Data Science", yearsExp: 5)
var papi = mami

mami.name
papi.name

papi.name = "Hendrix"

mami.name
papi.name // the value of mami.name didnt change

// """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
// Extension
 
// Gives aditional functionality to an existing data type

extension String{
    func removeWhiteSpace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

let alphabet = "A B C D E F G"
alphabet.removeWhiteSpace()
