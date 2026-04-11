import UIKit

print("""
COLLECTIONS:
1. Array->Ordered, allow duplicates
2. Set->Unordered, no duplicates
3. Dictionary->ordered, key-value pairs
""")

//1. create/initializer
var fruitsArray:[String] = ["Banana","Apple","Orange"]
var fruitsSet:Set<String> = ["Banana","Apple","Orange"]
var fruitsDictionary:[String:String] = ["Banana":"Yellow", "Apple":"Red", "Orange":"Orange"]

print("\n---CREATE---")
print("Array:", fruitsArray)
print("set:", fruitsSet)
print("dictionary:", fruitsDictionary)

//2. ADD ELEMENTS

//Array-> append or insert
fruitsArray.append("Mango")
fruitsSet.insert("Mango")
fruitsDictionary["Mango"] = "Green"

print("\n---ADD---")
print("Array:", fruitsArray)
print("set:", fruitsSet)
print("dictionary:", fruitsDictionary)



//3. REMOVE ELEMENTS
// Array -> remove by position
fruitsArray.remove(at: 0)
// Set -> remove by name
fruitsSet.remove("Banana")
// dictionary -> remove by key
fruitsDictionary.removeValue(forKey: "Banana")


print("\n---REMOVE---")
print("Array:", fruitsArray)
print("set:", fruitsSet)
print("dictionary:", fruitsDictionary)


//4. SEARCH ELEMENT
print("\n----SERACH----")
print("Array contains Apple? \(fruitsArray.contains("Apple"))")
print("Set contain Apple? \(fruitsSet.contains("Apple"))")
print("Dictionary contain Apple? \(fruitsDictionary.keys.contains("Apple"))")

//5. LOOP/Travel collection
print("\n---Array---")
for fruit in fruitsArray{
    print(fruit)
}


print("\n---Set---")
for fruit in fruitsSet{
    print(fruit)
}


print("\n---Dictionary---")
for (fruit,color) in fruitsDictionary{
    print(color)
}

//6. SORT
print("---SORTING---")
print("Array sorted asceding", fruitsArray.sorted())
print("Array sorted desceding", fruitsArray.sorted(by: >)) //desening

print("Set sorted ascending", fruitsSet.sorted())

let sortedByKey = fruitsDictionary.sorted{$0.key < $1.key}
let sortedByValue = fruitsDictionary.sorted{$0.value < $1.value}
print("Sorted by Key", sortedByKey)
print("Sorted by value", sortedByValue)
