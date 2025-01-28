//
//  AddTodoView.swift
//  Todo
//
//  Created by meyer timothee on 28/01/2025.
//

import SwiftUI

struct AddTodoView: View {
    @State private var todoTitle: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter Your Task", text: $todoTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            Button {
                
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
