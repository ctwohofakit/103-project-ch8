import UIKit

//ARRAY
print("----ARRAY---")
print("""
These are the characteristics of an Array:
1. It is an ordered collection.
2. Supports duplicated items.
3. Each item has a posiotion(index).\n
""")

// defining an Array
// var arrayName:[datatype] = [ , ,]

var emptyArray:[Int] = []
var gradesArray:[Int] = [100,90,60]

print("This is the grades Array \(gradesArray)")


//Set
print("\n----SET---")
print("""
These are the characteristic of a Set:
1. It is unorder
2. Duplicate are not allowed.
3. Item don't have a position(index)\n
""")

//defining a Set
//var setName: Set<Type> = [value1, value2,...]

var emptySet: Set<Int> = [1,2,3]
print("\(emptySet)")
var gradesSet: Set<Int> = [100, 90, 60, 90, 90]
print(" This is the grades set: \(gradesSet)")

//Dictionary
print("\n---Dictionary---")
print("""
These are the characteristic of a Dictionary:
1. Unordered.
2. Each key must be unique.
3. Collection of key-value pairs.\n
""")


//defining a Dicationary
// var dictionaryName: [keyType: valueType] = [key1:value1, key2:vale2,...]
var emptyDictionary: [String:Int] = [:]
print("\(emptyDictionary)")

var gradesDictionary: [String:Int] = ["Kit":100, "Oscar":90, "Fernanda":60]
print("This is the grade dictionary:\(gradesDictionary)\n")


//MINI challenage 1
var studentsGroup:[String] = ["tiny", "Amy", "king"]
print("""
this studentsGroup is an array---\(studentsGroup)\n
""")

//need to assign to student, so it is a dictionary
var studentID:[String:Int] = ["tiny":01, "Amy":02]
print("""
this studentID is an array---\(studentID)\n
""")

var gradesStudents:[String:Int] = ["tiny":60, "Amy":80]
print("""
this gradesStudents is a dictionary---\(gradesStudents)\n
""")

var courses:[String]=["English","Math"]
print("""
this courses is an array---\(courses)\n
""")
