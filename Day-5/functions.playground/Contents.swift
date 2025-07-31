import UIKit

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

func square(number: Int) {
    print(number * number)
}

square(number: 8)

func squared(number: Int) -> Int {
    return number * number
}

let result = squared(number: 8)
print(result)

func doMath() -> Int {
    return 5 + 5
}
// we don't need to type return if we have a single line expression to return
func doMoreMath() -> Int {
    5 + 5
}

// for returning multiple values best way is to use tuples

// Parameters labels

// to - external parameter and name - internal parameter
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

// omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Praveen")

// default parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)

// variadic functions - they accept any number of parameters of the same type, separated by comma. Inside the function they are handed to us as an array, which we can index into, loop over, and so on. it can be zero or more.

print("Haters", "gonna", "hate")

func squareNumbers(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareNumbers(numbers: 1, 2, 3, 4)

// throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}
// cannot pass constants as inout parameters
var myNum = 10
doubleInPlace(number: &myNum)
print(myNum)
