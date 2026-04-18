import UIKit

class StudentNoEcapsulation{
    var name: String
    var grade:Int
    
    init(name:String, grade:Int){
        self.name = name
        self.grade = grade
    }
    
    
}

let student1 = StudentNoEcapsulation(name: "Oscar", grade: 100)

print(student1.grade)

student1.grade = 2456
print(student1.grade)

//encapsulation
class StudentEcapsulation{
    var name: String
    private var grade:Int //hide
    
    init(name:String, grade:Int){
        self.name = name
        self.grade = grade
    }
    //controlled access
    func getGrade()-> Int {
        return grade
    }
    
    func setGrade(_ newGrade:Int) {
        if newGrade >= 0 && newGrade <= 100 {
            grade = newGrade
        }else {
            print("Grade must between 0-100")
        }
        
    }
}

let student2 = StudentEcapsulation(name:"Katty", grade:80)

print(student2.getGrade())
student2.setGrade(78)
print(student2.getGrade())
