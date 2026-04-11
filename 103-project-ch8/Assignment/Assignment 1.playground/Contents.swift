import UIKit

/*Uses an array to store the names of at least 5 students.
 Uses a dictionary to store each student’s grades, where the key is the student’s name and the value is an array of grades.
 Prints a summary of each student’s grades, including their average grade.*/

var studentsName:[String]=["Jackie","Mark","Kim","Paula","Bob"]
var studentsGrades:[String:[Double]]=[
    "Jackie":[85,90,78],
    "Mark":[92,88,95],
    "Kim":[78,80,85],
    "Paula":[83,90,92],
    "Bob":[91,82,77]
    
]
var averageArray:[String:Double] = [:]

print("Student Record Summary:")
for student in studentsName{
    print("Student: \(student)")
    for (name, grades)in studentsGrades{
        if name == student{
            print("Grades: \(grades)")
            var average = grades.reduce(0,+) / Double(grades.count)
//            var average = (totalGrade / Double(grades.count))
            var roundedAverage = (average*100).rounded()/100
            print("Average: \(roundedAverage)\n")
            averageArray[name] = roundedAverage
        }
    }
}

//print(averageArray)
var highestAverage = averageArray.max {$0.value < $1.value}

if var highestStudent = highestAverage {
    print("Yeah~~The highest average student is \(highestStudent.key)!!!, and the average score is \(highestStudent.value)")
}

//for (name, grade) in highestAverage {
//    print("\(highestAverage)")
//}
////let highestAverage = averageArray.max {$0.value < $1.value}
//print (Array(highestAverage.keys))



//if
//    print("The highest average is \(highestAverage)")
//
//}
