import UIKit

class Pet {
    //property/attributes
    var name: String
    var breed: String
    var age: Int
    var owner: String
    
    //Initializer/ constructor
    init(name: String, breed: String, age: Int, owner: String){
        self.name = name
        self.breed = breed
        self.age = age
        self.owner = owner
    }
    
    //method
    func makeSound(){
        print("\(name) is making a sound")
    }
    
    
    
    
}

// 1. create an object
print("1. create a pet object")
let myPet = Pet(name:"Mocha" ,breed: "maltese", age:5, owner:"kit")

print(myPet)

// 2. Access Properties"
print("\n2. Access Properties")
print(myPet.name)

//3. Change/Update a Property Value
print("\n3. Change/Update a Property Value")
myPet.age = 4
print(myPet.age)


//4. Call the method
myPet.makeSound()



