//
//  ToDoListItem.swift
//  TaskWhiz
//
//  Created by Antonio Damjanović on 04.12.2025..
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let createdDate: TimeInterval
    let dueDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
