//
//  ShoppingListView.swift
//  103-project-ch8
//
//  Created by Kit Sitou on 4/11/26.
// MARK: -some comment here

import SwiftUI

struct ShoppingListView: View {
    //MARK: - State
    @State private var shoppingList:[String] = ["Eggs", "Bananas"]
    @State private var item: String = ""
    
    @State private var showAlert: Bool = false
    @State private var duplicateAlert: Bool = false
    var body: some View {
        NavigationStack{
            
            // MARK: - Main Stack
            VStack{
                List(shoppingList, id: \.self){ listItem in
                    Text(listItem)
                }
                
                HStack{
                    TextField("Add a new shopping item...", text:$item)
                        .padding()
                    
                    Button{
                        //code to add the item to the array
                        addItem()
                        
                    }label:{
                        Image(systemName: "arrowshape.up.circle.fill")
                            .padding()
                            .font(.largeTitle)
                    }
                }
                
            }// END: Main Stack
            .navigationTitle("Shopping List")
            .bold()
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar{
                Menu{
                    Button("Sort A->Z"){
                        //logic
                        shoppingList = shoppingList.sorted(by: <)
                        
                    }
                    Button("Reversed Order"){
                        //logic, getting the last action
                        shoppingList.reverse()
                    }
                    
                } label:{
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .foregroundColor(.blue)
                        .bold()
                }
            }//END: toolbar
            
            .alert("Invalid Item", isPresented: $showAlert){
                Button("Ok", role: .cancel){}
            }message:{
                Text("We don't allow empty values")
            }
            
//            .alert("duplicate", isPresented: $duplicateAlert{
//                Button("Ok", role: .cancel){}
//            }message:{
//                Text("We don't allow empty values")
//            }
        
            
        }//END: NavigationView
    }// END: body
    //MARK: -Function
    
    func addItem(){
        let trimmedItem = item.trimmingCharacters(in: .whitespaces)
        
        //1. must not be empty
        guard !trimmedItem.isEmpty else{
            showAlert = true
            return
        }
        
        //2. must not be duplicate
        guard !shoppingList.contains(trimmedItem) else{
            duplicateAlert = true
            return
        }
        
        
        
        //3.add the item to th array
        shoppingList.append(trimmedItem)
        
        //4. clear text field
        item = ""
    }
    
    
    
    
}// END: ShoppingListView

#Preview {
    ShoppingListView()
}
