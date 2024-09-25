//
//  ItemModel.swift
//  TodoList
//
//  Created by Shreya Pallan on 25/09/24.
//

import Foundation


struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
