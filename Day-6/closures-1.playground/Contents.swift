// closures -  these are functions which are used just like variables, which can be assigned to a variable or can be passed in functions.

let driving = {
    print("I am driving")
}

driving()

// parameters in closures

let playing = { (player: String) in
    print("\(player) is playing amazing")
}

playing("Sachin")

// returning from a closure

let drivingWithReturn = { (place: String) -> String in
    return "Driving to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// closure with a return value without parameters
let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

// closures as parameters

func travel(action: () -> Void) {
    action()
}

travel(action: driving)

// trailing closure syntax

func travelling(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travelling() {
    print("I am driving")
}
// no use of parenthesis as there are no other parameters
travelling {
    print("I am driving")
}



