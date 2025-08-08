// Optionals - nil value (not known)

var age: Int? = nil
age = 40
print(age)

// Unwrapping optionals

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// Unwrapping with guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

// Force unwrapping

let str = "5"
let num1 = Int(str) // Int?
let num2 = Int(str)! //Int

// Implicitly unwrapped optionals

var integer: Int! = nil

// Implicitly unwrapped optionals exist because sometimes a variable will start life as nil, but will always have a value before you need to use it. Because you know they will have a value by the time you need them, it’s helpful not having to write if let all the time.


// Nil coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

// Optional chaining

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

// Optional try

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
    let result = try checkPassword("password")
    print("Result was \(result)")
} catch {
    print("Wrong password")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")
print("OK!")

// We can run throwing functions using do, try, and catch in Swift, but an alternative is to use try? to convert a throwing function call into an optional. If the function succeeds, its return value will be an optional containing whatever you would normally have received back, and if it fails the return value will be an optional set to nil.



// Failable initializers

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
    
    // returns an optional Person
}

// Typecasting

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

// now pets is an array of type [Animal]

// but we can only call makeNoise() on type Dog so first we need to typecast to dog and then call makeNoise()
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
