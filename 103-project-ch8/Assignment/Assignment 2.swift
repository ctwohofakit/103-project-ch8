//
//  Assignment 2.swift
//  103-project-ch8
//
//  Created by Kit Sitou on 4/12/26.
//

import SwiftUI

struct Assignment_2: View {
//MARK: -state varbiles
@State private var studentsGrades: [String:Double] = [
    "Alice" : 95,
    "Bob" : 88
]
@State private var studentName : String = ""
@State private var studentGrade : Double = 0
@State private var isSorted: Bool = false
    
    var displayList:[(name:String, grade:Double)]{
        if isSorted{
            return studentsGrades.sorted { $0.key < $1.key}.map {(name: $0.key, grade: $0.value)}
        }else {
            return studentsGrades.sorted { $0.key > $1.key}.map{(name:$0.key , grade: $0.value)}
        }
    }
    
    
    //get Average
    var averageScore: Double{
        let values = studentsGrades.values
        let total = values.reduce(0,+)
        return values.isEmpty ? 0 : total / Double(values.count)
    }
    
    
    //add item
    func addItem(){
        let trimmedName = studentName.trimmingCharacters(in: .whitespaces)
        
        guard !trimmedName.isEmpty else{
            return
        }
      
        studentsGrades[trimmedName] = studentGrade
        studentName = ""
        studentGrade = 0
        
        
    }
    
    
    
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Student Grades")
                    .font(.largeTitle)
                    .foregroundColor(.brown)
               
               
                Text("Average Grade: \(averageScore, specifier: "%.02f")")
                        .foregroundColor(.gray)
                        .bold()
                        
                
                List{
                    ForEach(Array(displayList), id: \.name){student in
                        Text("\(student.name) - \(student.grade,  specifier: "%.0f")" )
                    
                    }
                }
                    

                Spacer()
                HStack{
                    Spacer()
                    TextField("Name", text:$studentName)
                        .padding()
                        .frame(height: 45)
                        .overlay{
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(.gray.opacity(0.8), lineWidth: 1)
                            
                        }
                    TextField("Average Grade", value:$studentGrade ,format: .number)
                        .padding()
                        .frame(height: 45)
                        .overlay{
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(.gray.opacity(0.8), lineWidth: 1)
                            
                        }
                    Button{
                        //code to add the item to the array
                       addItem()
                        
                    }
                    label:{
                        Image(systemName: "plus.circle.fill")
                            .padding()
                            .font(.largeTitle)
                            .foregroundColor(.brown)
                    }
                   
                }

            }//End: main stack
                .navigationTitle("GradeBook")
                .navigationBarTitleDisplayMode(.inline)
                
                .toolbar{
                    Menu{
                        Button("Sort A -> Z"){
                            isSorted = true
                        }
                        Button("Sort Z -> A"){
                            isSorted = false
//

                        }
                    } //End of Menu has to have label
                    label:{
                        Image(systemName: "arrow.up.arrow.down.circle")
                            .foregroundColor(.brown)
                            .bold()
                    }
                }

        
    }//End: nav stack
        
        
    }//End: body
}//End: Assignment_2View

#Preview {
    Assignment_2()
}
