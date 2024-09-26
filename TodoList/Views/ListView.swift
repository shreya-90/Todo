//
//  ListView.swift
//  TodoList
//
//  Created by Shreya Pallan on 25/09/24.
//

import SwiftUI

struct ListView: View {
    
     @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false)
     ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
               
            }.onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
            
        }.navigationTitle("Todo 📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing: NavigationLink("Add", destination: AddView())
            )
            .listStyle(.plain)
    }
    
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
}

#Preview {
    NavigationView {
        ListView()
    }
}


