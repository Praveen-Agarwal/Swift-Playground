
// Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm traveling to \(place).")
}

// Using closures as parameters when they return values

func travel1(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel1 { (place: String) -> String in
    return "I am travelling to \(place) in my car"
}

// shorthand parameter names

travel1 { place in
    "I am travelling to \(place) in my car"
}
// removed parameter type, return type, return keyword(single line of expression)

// shorthand syntax are named with a dollar sign, then a number counting from 0.
travel1 {
    "I am travelling to \($0) in my car"
}

// returning closures from a function

func makeTravel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = makeTravel()
result("London")

let result1 = makeTravel()("London")
// not recommended

// Capturing values in closures ***

func goTravel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let resultant = goTravel()
resultant("London")
resultant("Paris")



