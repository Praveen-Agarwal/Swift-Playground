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
