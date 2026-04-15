import UIKit

class Students {
    var name:String
    var age:Int
    var grades:[Int]
    
    init(name:String, age:Int, grades:[Int]){
        self.name = name
        self.age = age
        self.grades = grades
    }
    
    let student1 = Students (name:"kit", age:35, grades:[78, 68, 90])
    //func
    func aveGrade()->Double{
        var total = 0
        for a in Students.grades {
            let sum = a.gredes.reduce(0,1)
            total += sum
                
            
        }
        
    }
}
