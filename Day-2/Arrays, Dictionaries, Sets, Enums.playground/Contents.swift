import UIKit

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

// Sets

let colors = Set(["red", "blue", "green", "yellow"])
let colours2 = Set(["red", "blue", "green", "red", "blue"])

// Sets vs Arrays

// 1) Items aren’t stored in any order; they are stored in what is effectively a random order.
// 2) No item can appear twice in a set; all items must be unique.

// Tuples

var person = (name: "Justin", age: 48)
person.1
person.name

// Dictionary

var heights = ["Justin": 178, "Sarah": 165, "John": 180]
heights["Sarah"]

// Default value in dictionary

heights["Michael", default: 170]

// Empty collections

var dict = [String: Int]()

var arr = [Int]()

var set = Set<Int>()

var dict1 = Dictionary<String, Int>()
var arr1 = Array<Int>()

// Enums
enum Direction {
    case north, south, east, west
}

enum Result {
    case success
    case failure
}

let result = Result.success

// Enum associated values

enum Activity {
    case talking(topic: String)
    case singing(volume: Int)
    case walking(distance: String)
}

let talking = Activity.talking(topic: "Football")

enum WeatherType {
    case rain
    case sun
    case cloud
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return "Happy"
    case .wind(let speed) where speed < 10:
        return "Unhappy"
    case .snow, .wind:
        return "Angry"
    case .rain, .cloud:
        return "Hate"
    }
}

// Enum raw value

enum Planet: Int {
    case mercury
    case venus
    case earth
}

let earth = Planet(rawValue: 2)

enum Planets: Int {
    case mercury = 1
    case venus
    case earth
}

let earth1 = Planets(rawValue: 3)


