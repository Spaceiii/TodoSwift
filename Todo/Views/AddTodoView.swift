//
//  AddTodoView.swift
//  Todo
//
//  Created by meyer timothee on 28/01/2025.
//

import SwiftUI

struct AddTodoView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoVM: TodoViewModel
    
    @State private var todoTitle: String = ""
    @State private var priority: Priority = .normal
    
    var body: some View {
        VStack {
            TextField("Enter Your Task", text: $todoTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            Picker("Priority", selection: $priority) {
                ForEach(Priority.allCases, id : \.self) { priority in
                    Text(priority.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Button {
                self.todoVM.addTodo(todo: Todo(title: todoTitle, isCompleted: false, priority: priority))
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Save")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding(14)
        .navigationTitle("Add a Todo")
    }
}

#Preview {
    NavigationView {
        AddTodoView()
    }
}
