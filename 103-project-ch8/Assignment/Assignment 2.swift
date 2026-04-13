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
@State private var StrudentName : String = ""
@State private var StudentGrade : Double = 0
    
    var sortedName: [(name:String,grade:Double)]{
        studentsGrades
            //$0 is the first item to compare
            //$1 is the second item to compare
            .sorted { $0.key < $1.key} // arry
            .map {(name: $0.key, grade: $0.value)}// rename the tupple items
    }
    
    
    
    
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Student Grades")
                    .font(.largeTitle)
                    .foregroundColor(.brown)
               
               
                    Text("Average Grade:")
                        .foregroundColor(.gray)
                        .bold()
                        
                
                List{
                    
                    ForEach(studentsGrades.keys.sorted(), id: \.self) {name in
                        if let averageGrade = studentsGrades[name]{
                            Text("\(name) - \(averageGrade, specifier: "%.0f")")
                            
                        }
                    
                    
                    }
                }
                    

                Spacer()
                HStack{
                    Spacer()
                    TextField("Name", text:$StrudentName)
                        .padding()
                        .frame(height: 45)
                        .overlay{
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(.gray.opacity(0.8), lineWidth: 1)
                            
                        }
                    TextField("Average Grade", text:$StrudentName)
                        .padding()
                        .frame(height: 45)
                        .overlay{
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(.gray.opacity(0.8), lineWidth: 1)
                            
                        }
                    Button{
                        //code to add the item to the array
                       
                        
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
                        Button("Sort A->Z"){

                            let sortedA_Z = studentsGrades.sorted{$0.key < $1.key}
                        }
                        Button("Reversed Order"){
                            //logic
                            let sortedZ_A = studentsGrades.sorted{$0.key > $1.key}

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
