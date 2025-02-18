//
//  Todo.swift
//  Todo
//
//  Created by meyer timothee on 28/01/2025.
//

import Foundation

enum Priority: String, CaseIterable {
    case low = "Low"
    case normal = "Normal"
    case high = "High"
}

struct Todo: Identifiable {
    let id: UUID = UUID()
    var title: String
    var isCompleted: Bool
    var priority: Priority
    
    static var testData = [
        Todo(title: "Task 1", isCompleted: false, priority: .low),
        Todo(title: "Task 2", isCompleted: true, priority: .normal),
        Todo(title: "Task 3", isCompleted: true, priority: .high),
        Todo(title: "Task 4", isCompleted: false, priority: .low),
    ]
}
