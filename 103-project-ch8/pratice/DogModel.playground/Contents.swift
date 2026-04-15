import UIKit

class Dog{
    var name: String
    var breed: String
    var age: Int
    

    init(name: String, breed: String, age: Int){
        self.name = name
        self.breed = breed
        self.age = age
    }
    
    
}

let myDog = Dog(name:"marble", breed:"shorhair", age:1)
let myDog2 = Dog(name:"Tato", breed:"shorhair", age:1)
let myDog3 = Dog(name:"Rocky", breed:"shorhair", age:1)


//Create an array of objects
var dogs: [Dog] = [
    Dog(name:"marble", breed:"shorhair", age:1),
    Dog(name:"Tato", breed:"mixed", age:2),
    Dog(name:"Rocky", breed:"maltese", age:3)
    
]

//access array by postion, then the property using .
print(dogs[1].name)

print("\nHey, this is \(dogs[0].name), I am \(dogs[0].breed), and I am \(dogs[0].age) years old.")
print("Hey, this is \(dogs[1].name), I am \(dogs[1].breed), and I am \(dogs[1].age) years old.")
print("Hey, this is \(dogs[2].name), I am \(dogs[2].breed), and I am \(dogs[2].age) years old.\n")

// varible is the object
for a in dogs{
    print("Hey, this is \(a.name), I am \(a.breed), and I am \(a.age) years old.")
}


// if using _ dogs:[Dog], the call function does not need the dog varible to call
func aveAge(dogs:[Dog])-> Double {
    var totalAge = 0
    
    for dog in dogs {
        totalAge += dog.age
    }
    return Double(totalAge) / Double(dogs.count)
    
}

//aveAge()
print(aveAge(dogs: dogs))
