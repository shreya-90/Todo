//
//  ListView.swift
//  TodoList
//
//  Created by Shreya Pallan on 25/09/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                        }
                    }
               
            }.onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            
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
    .environmentObject(ListViewModel())
}


