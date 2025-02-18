//
//  MainView.swift
//  Todo
//
//  Created by meyer timothee on 04/02/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "dollarsign.square")
                    Text("Expenses")
                }
            AddTodoView()
                .tabItem {
                    Image(systemName: "dollarsign.square")
                    Text("Add")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(TodoViewModel())
}
