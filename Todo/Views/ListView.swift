//
//  ContentView.swift
//  Todo
//
//  Created by meyer timothee on 28/01/2025.
//

import SwiftUI

struct ListView: View {
    var data : [Todo]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(data) { todo in
                    RowView(todo: todo)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo")
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Add", destination: AddTodoView())
                }
            }
        }
    }
}

#Preview {
    ListView(data: Todo.testData)
}
