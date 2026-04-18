//
//  FinalReport.swift
//  103-project-ch8
//
//  Created by Kit Sitou on 4/15/26.
//

import SwiftUI

struct ProfessorsListView: View {
    @State var professors: [Professor] = [
        Professor(firstName: "Adrian", lastName: "Thomas", phoneNum: "1234567890"),
        Professor(firstName: "Vivian", lastName: "Lin", phoneNum: "2840000001"),
        Professor(firstName: "Maria", lastName: "Gomez", phoneNum: "3334445555")
    ]
    
    @State private var fname: String = ""
    @State private var lname: String = ""
    @State private var phone: String = ""
    
    
    @State private var showAlert  = false
    @State private var isDup = false
    
    
    var body: some View {
        VStack{
            Text("Professors List")
            
            List(professors, id: \.firstName){ a in
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width:23)
                        Text("\(a.firstName) \(a.lastName)")
                        Spacer()
                        Image(systemName: "phone.bubble.fill")
                            .resizable()
                            .frame(width:23)
                            .foregroundColor(.green)
                        Text("\(a.phoneNum)")
                    }
                    .padding()
                    
                }
            }
            
            
            VStack{
                Form{
                    Section(header:Text("Registering Professor")){
                        HStack{
                            TextField("First name" ,text:$fname)
                                .padding()
                                .frame(height: 45)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 10)
                                        .inset(by: 0.5)
                                        .stroke(Color.gray, lineWidth: 2)
                                }
                            TextField("Last name" ,text:$lname)
                                .padding()
                                .frame(height: 45)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 10)
                                        .inset(by: 0.5)
                                        .stroke(Color.gray, lineWidth: 2)
                                }
                            
                        }
                        .textInputAutocapitalization(.words)
                        
                        
                        TextField("Phone number" ,text:$phone)
                            .keyboardType(.numberPad)
                            .padding()
                            .frame(height: 45)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .inset(by: 0.5)
                                    .stroke(Color.gray, lineWidth: 2)
                            }
                    }
                    
                }
                //remove default grey
                .scrollContentBackground(.hidden)
                .background(Color.white)
                
                Button("Register"){
                    registerProfessor()
                    
                }/*.disabled(fname.isEmpty || lname.isEmpty || phone.isEmpty)*/
                //button
                .padding(.horizontal,30)
                //                .frame(alignment: .center)
                //                .frame(maxWidth: 100)
                .padding(15)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .inset(by: 0.5)
                        .stroke(Color.blue, lineWidth: 2)
                }
                .bold()
            }.frame(height: 250)
            
        }//main stack
        
        .alert("Invalid Item", isPresented: $showAlert){
            Button("Ok", role: .cancel){}
        }message:{
            Text("We don't allow empty values")
        }
        
        
        .alert("Duplicate Phone number", isPresented: $isDup){
            Button("Ok", role: .cancel){}
        }message:{
            Text("This is duplicate phone number")
        }
    }
    
    
    
        //MARK: function
        func registerProfessor(){
            let trimmedPhone:String = phone.trimmingCharacters(in: .whitespaces)
            let newProfessor = Professor(firstName: fname, lastName: lname, phoneNum: phone )
            
                           
                //1. must not be empty
            guard !fname.isEmpty, !lname.isEmpty, !phone.isEmpty else{
                    showAlert = true
                    return
                }
            
            //checking for array
            guard !professors.contains(where: {$0.phoneNum == trimmedPhone} ) else{
                isDup = true
                return
            }
                //2. must not be duplicate
            
            
            
                
                //3.add the item to th array
            professors.append(newProfessor)

                
                //4. clear text field
                fname = ""
                lname = ""
                phone = ""

            
        }

}


#Preview {
    ProfessorsListView()
}
