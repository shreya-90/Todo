//
//  ListView.swift
//  TodoList
//
//  Created by Shreya Pallan on 25/09/24.
//

import SwiftUI

struct ListView: View {
    
     var items: [String] = ["This is the first title here!",
                            "This is the second!",
                            "Third!"]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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


