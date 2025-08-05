
// Classes

// Classes are similar to structs in that they allow you to create new types with properties and methods, but they have five important differences and I’m going to walk you through each of those differences one at a time.

// The first difference between classes and structs is that classes never come with a memberwise initializer. This means if you have properties in your class, you must always create your own initializer.


class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Labrador")

// classes vs struct

// 1) Classes do not come with synthesized memberwise initializers.

// 2) One class can be built upon (“inherit from”) another class, gaining its properties and methods.

// 3) Copies of structs are always unique, whereas copies of classes actually point to the same shared data.

// 4) Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.

// 5) Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.


// inheritance

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
// For safety reasons, Swift always makes you call super.init() from child classes – just in case the parent class does some important work when it’s created.

// Overriding methods

class Cat {
    func makeNoise() {
        print("Meow!")
    }
}

class Lion: Cat {
    override func makeNoise() {
        print("Roar!")
    }
}

let simba = Lion()
simba.makeNoise()

// we can only override methods and computed properties

// final classes

// when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.

final class Horse {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Copying objects

// The third difference between classes and structs is how they are copied. When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Ariana Grande"
print(singer.name)

struct Dancer {
    var name = "Taylor Swift"
}

var dancer = Dancer()
print(dancer.name)

var dancerCopy = dancer
dancerCopy.name = "Ariana Grande"
print(dancer.name)
// The technical term for this distinction is “value types vs reference types.”

// Deinitializers

// The fourth difference between classes and structs is that classes can have deinitializers – code that gets run when an instance of a class is destroyed.

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Behind the scenes Swift performs something called automatic reference counting, or ARC. ARC tracks how many copies of each class instance exists: every time you take a copy of a class instance Swift adds 1 to its reference count, and every time a copy is destroyed Swift subtracts 1 from its reference count. When the count reaches 0 it means no one refers to the class any more, and Swift will call its deinitializer and destroy the object.


// Mutability

// constant class with a variable property can change the value of that property

class Actor {
    var name = "Praveen"
}

let actor = Actor()
actor.name = "Ed Sheeran"
print(actor.name)

// If you want to stop that from happening you need to make the property constant:

class Anchor {
    let name = "Praveen"
}

let anchor = Anchor()
anchor.name = "Ed Sheeran" // Error










