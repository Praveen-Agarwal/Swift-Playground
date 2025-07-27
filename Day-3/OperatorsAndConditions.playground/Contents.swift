import UIKit

// Arithmetic operators

let firstScore = 12
let secondScore = 4
// Add
let sum = firstScore + secondScore

// Subtract
let difference = firstScore - secondScore

// Multiply
let product = firstScore * secondScore

// Division
let division = firstScore / secondScore

// Mod
let remainder = firstScore % secondScore
let number = 456
let isMultiple = number.isMultiple(of: 7)

// Operator overloading
// means operator depends on the values you use it with
let int = 42
let doubleInt = int + 42

let string = "Hello"
let doubleString = string + " World!"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// short hand notation
var score = 95
score -= 5

var message = "Hello"
message += " World!"

// comparison operators
let firstNumber = 100
let secondNumber = 95

firstNumber == secondNumber
firstNumber != secondNumber
firstNumber > secondNumber
firstNumber < secondNumber
firstNumber >= secondNumber
firstNumber <= secondNumber

// these also works with strings on the basis of their alphabetical order

// Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//ternary operator
let card1 = 11
let card2 = 10
print(card1 == card2 ? "Cards are the same" : "Cards are different")

// switch
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // only if you want to execute the code for coming cases
default:
    print("Enjoy your day!")
}

// range operators

let marks = 85

switch marks {
case 0..<50:
    print("You failed badly.")
case 50...85:
    print("You did OK.")
default:
    print("You did great!")
}

let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[1...]) // index 1 to end of array


