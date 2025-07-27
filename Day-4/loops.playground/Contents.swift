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

