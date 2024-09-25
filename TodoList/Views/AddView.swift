//
//  AddView.swift
//  TodoList
//
//  Created by Shreya Pallan on 25/09/24.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type somehting here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                    
                   
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        
                        
                })
            }.navigationBarTitle("Add an item 🖊️")
                .padding(14)
        }
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
