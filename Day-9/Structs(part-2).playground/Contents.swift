// initializers

struct User {
    var username: String
}

var user = User(username: "twostraws")
// All structs come with one by default, called their memberwise initializer – this asks you to provide a value for each property when you create the struct.

struct User1 {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user1 = User1()
user1.username = "twostraws"

// So, as soon as you add a custom initializer for your struct, the default memberwise initializer goes away. If you want it to stay, move your custom initializer to an extension, like this:

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()

// Referring to the current instance

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
// self refers to the current instance of the struct


// Lazy properties - As a performance optimization, Swift lets you create some properties only when they are needed.

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person1 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var eddy = Person1(name: "Ed")
eddy.familyTree
// in this case familyTree will only take space in memory or we can say will get created, when we access it.
// Because lazy properties change the underlying object they are attached to, you can’t use them on constant structs.

// Static properties and methods

struct Student {
    static var count = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.count += 1
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

print(Student.count)

// Access control

struct Persons {
    private var id: String

    init(id: String) {
        self.id = id
    }
    
    func identify() {
        print("My social security number is \(id)") 
    }
}

let eden = Persons(id: "1234")
eden.identify()
