//
//  TodoListApp.swift
//  TodoList
//
//  Created by Shreya Pallan on 25/09/24.
//

import SwiftUI

@main
struct TodoListApp: App {
    
   @StateObject var listViewModel : ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }.environmentObject(listViewModel)
                .navigationViewStyle(.stack)
            
        }
    }
}
