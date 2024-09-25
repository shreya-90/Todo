//
//  ListRowView.swift
//  TodoList
//
//  Created by Shreya Pallan on 25/09/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical, 8)
    }
}
#Preview {
    Group {
        ListRowView(item: ItemModel(title: "test title", isCompleted: true)).previewLayout(.sizeThatFits)
        ListRowView(item: ItemModel(title: "test title 1", isCompleted: false))
    }.previewLayout(.sizeThatFits)
    
    
}


