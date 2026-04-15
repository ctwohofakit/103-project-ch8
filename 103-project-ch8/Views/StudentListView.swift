//
//  StudentListView.swift
//  103-project-ch8
//
//  Created by Kit Sitou on 4/14/26.
//

import SwiftUI

struct StudentListView: View {
  @State var Students: [Student] = [
        Student(name: "Kit" , grade: 67.99),
        Student(name: "Fernanada" , grade: 89.95)

    ]
    
    @State private var name: String = ""
    @State private var grade: String = ""
    
    
    var body: some View {
        VStack{
            Text("Average Grade: ")
                .font(.title)
            
            //List
            List(Students, id: \.name){ student in
                Text("\(student.name) - \(student.grade ,specifier:"%.2f")")
            }
            
            HStack{
                TextField("Name", text: $name)
                TextField("Grade", text: $grade)
                Button("Add"){
                    //code here
                    
                    //append->array
                    guard let gradeValue = Double (grade) else {return}
                    let newStudent = Student(name: name, grade: gradeValue)
                    Students.append(newStudent)
                    
                }.padding()
                
            }
            
        }
        
        
        
    }
}

#Preview {
    StudentListView()
}
