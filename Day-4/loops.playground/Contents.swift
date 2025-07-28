import UIKit

// For loop

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// use underscore if you are not using value in loop block of code
print("Players gonna ")
for _ in 1...5 {
    print("play")
}

// while loop

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// Repeat loop

// executed at-least once

var no = 1

repeat {
    print(no)
    no += 1
} while no <= 20
            
print("Ready or not, here I come!")


while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

// shuffled func in arrays

let numbers = [1,2,3,4,5,6]

let shuffledNumbers = numbers.shuffled()

// Exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// Exiting multiple loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// with regular break, only innerLoop is exited.


// Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

// Infinte loops

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
