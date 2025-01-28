//
//  Todo.swift
//  Todo
//
//  Created by meyer timothee on 28/01/2025.
//

import Foundation

struct Todo: Identifiable {
    let id: UUID = UUID()
    var title: String
    var isCompleted: Bool
    
    static var testData = [
        Todo(title: "Task 1", isCompleted: false),
        Todo(title: "Task 2", isCompleted: false),
        Todo(title: "Task 3", isCompleted: true),
        Todo(title: "Task 4", isCompleted: false),
    ]
}
