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
    
    
    //func
    func aveGrade()->Double{
        var total = 0
        for a in grades {
             total += a
        }
        return Double(total) / Double(grades.count)
    }
    //score passing
    func passing()->String{
        let average = aveGrade()
        
        if average >= 60 {
           return "Passing"
            
        }else {
            return "Failed, don't worry. Next time will be better\n"
        }
    }
    
}


var students: [Students] = [
    Students (name:"kit", age:35, grades:[78, 68, 90]),
    Students (name:"May", age:24, grades:[80, 70, 96]),
    Students (name:"Christa", age:28, grades:[75, 82, 89]),
    Students (name:"Tom", age:27, grades:[48, 59, 60])
]

for a in students{
    print("""
    Student: \(a.name)
    Average: \(a.aveGrade())
    Status: \(a.passing())\n
    """)
}

//course average
print("Course Average: \(averageClassScore(students: students))")

//Course average function
func averageClassScore(students:[Students])->Double{
    var sumOfAverage = 0.0
    
    for student in students{
        sumOfAverage += student.aveGrade()
        
    }
    return Double(sumOfAverage) / Double(students.count)
    
    
}
