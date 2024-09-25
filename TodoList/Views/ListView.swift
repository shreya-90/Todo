//
//  ListView.swift
//  TodoList
//
//  Created by Shreya Pallan on 25/09/24.
//

import SwiftUI

struct ListView: View {
    
     var items: [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false)
     ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
               
            }
            
        }.navigationTitle("Todo 📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing: NavigationLink("Add", destination: AddView())
            )
            .listStyle(.plain)
    }
    
    
}

#Preview {
    NavigationView {
        ListView()
    }
}


