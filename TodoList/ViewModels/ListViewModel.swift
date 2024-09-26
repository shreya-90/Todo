//
//  ListViewModel.swift
//  TodoList
//
//  Created by Shreya Pallan on 26/09/24.
//

import Foundation


class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        var newItems: [ItemModel] = [
           ItemModel(title: "This is the first title!", isCompleted: false),
           ItemModel(title: "This is the second!", isCompleted: true),
           ItemModel(title: "Third", isCompleted: false)
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
