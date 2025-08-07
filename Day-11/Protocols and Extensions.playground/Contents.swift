// Protocols

// Protocols are a way of describing what properties and methods something must have.

protocol Identifiable {
    var id: String { get set }
}

// in protocols properties must have either { get } or { get set }

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// in swift multiple inheritance is not supported

// Protocol inheritance

// One protocol can inherit from another in a process known as protocol inheritance. Unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top.

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

// Extensions

// Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.

extension Int {
    // Swift doesn’t let you add stored properties in extensions
    var isEven: Bool {
        return self.isMultiple(of: 2)
    }
    
    func squared() -> Int {
        return self * self
    }
}

var number = 8
print(number.squared())
print(number.isEven)

// Protocol Extension

// This helps us to extend all conforming types with some functionality at the same time

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

// Collection is a protocol, arrays and sets both conforms to it.

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// Protocol-oriented programming

// crafting your code around protocols and protocol extensions.

protocol Identity {
    var id: String { get set }
    func identify()
}

// protocol extensions allow us to provide a default:
extension Identity {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Human: Identity {
    var id: String
}

let twostraws = Human(id: "twostraws")
twostraws.identify()
