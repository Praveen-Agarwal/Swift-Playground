import UIKit

// Variables
var greeting = "Hello, playground"
greeting = "Hello, Praveen"
greeting = "Hello, Agarwal"

// constants value cannot be changed
let taylor = "Swift"

//always prefer let as it improves compile time and runtime


// Swift is a type safe language
// means every variable must be of one specific type
var greet = "Hello" // String
var age = 38 // Int(integer)
var population = 8_000_000 // _ helps to make numbers readable without changing their type

// String interpolation

var score = 85
var str = "Your score was \(score)"
var results = "The test results are here: \(str)"

// Multiline strings

// opening and closing quotes should be having there own line
var greetings = """
Here goes
multi line
string
"""

// If you only want to use multi line for formatted code, use \ at line break
var newGreeting = """
Here goes \
formatted \
string
"""
// better clarification - check outputs

// Double and Bool

// Double - double precision floating point number
var pi = 3.14

// Boolean - true or false
var awesome = true

// Type annotations

// type inference - swift infers the type from the value that is assigned
let greets = "Hello, playground"

// type annotation
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

print(type(of: album))
type(of: year)
type(of: height)
type(of: taylorRocks)








