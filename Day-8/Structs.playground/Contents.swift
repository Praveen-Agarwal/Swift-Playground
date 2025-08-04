// Structs - user defined type

struct Sport {
    var name: String
}
// variables inside struct are called properties.

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Badminton"
print(tennis.name)

// Computed properties - a property that runs code to figure out its value.

struct Sports {
    var name: String // stored property
    var isOlympicSport: Bool // stored property

    var olympicStatus: String { // computed property
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

var basketball = Sports(name: "Basketball", isOlympicSport: true)

print(basketball.olympicStatus)


// Property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 25
progress.amount = 50
progress.amount = 100

// "willSet" to take action before a property changes

// Methods
// functions inside structs are called methods

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

var london = City(population: 8_925_000)
print(london.collectTaxes())

// Mutating methods

//If a struct has a variable property but the instance of the struct was created as a constant, that property can’t be changed – the struct is constant, so all its properties are also constant regardless of how they were created.

//The problem is that when you create the struct Swift has no idea whether you will use it with constants or variables, so by default it takes the safe approach: Swift won’t let you write methods that change properties unless you specifically request it.

//When you want to change a property inside a method, you need to mark it using the mutating keyword, like this:

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

//Because it changes the property, Swift will only allow that method to be called on Person instances that are variables:

var person = Person(name: "Ed")
person.makeAnonymous()

// Strings are themselves a struct

let string = "Hello, world!"
print(string.count)
print(string.hasPrefix("He"))
print(string.uppercased())
print(string.sorted())

// Arrays are also structs

var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)


