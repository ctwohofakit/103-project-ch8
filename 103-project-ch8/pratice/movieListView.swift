//
//  movieListView.swift
//  103-project-ch8
//
//  Created by Kit Sitou on 4/11/26.
//

import SwiftUI


struct movieListView: View {
@State private var moviesList:Set<String> = ["Weapons", "The Great Flood"]
    @State private var movie:String = ""
    var body: some View {
        VStack{
            Text("Favorite Movie")
                .bold()
            //MARK
            //List(moviesList).sorted(), id: \.self{listItem in Text(listView)}
            //the sorted is allowing the set to become in order
            List(Array(moviesList), id: \.self){ listItem in
                    Text(listItem)
                }
            HStack{
                TextField("Please enter text here...", text:$movie)
                
                Button{
                    //code to add the item to the array
                    if movie != ""{
                        moviesList.insert(movie)
                        movie = ""
                 }
                }label:{
                    Image(systemName: "arrowshape.up.circle.fill")
                        .padding()
                        .font(.largeTitle)
                }
            }
        }
        
        

    }
}

#Preview {
    movieListView()
}


//Exercise: My Favorite Movies List
//
//Create a View where you display 2 Favorite Movies.
//
//The movies should be stored in a Set (don’t user array).
//
//Use a List to display the Movies
//
//Add a Text Field and a Button to add more Movies to your list.
