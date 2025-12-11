//
//  NewItemViewModel.swift
//  TaskWhiz
//
//  Created by Antonio Damjanović on 04.12.2025..
//

import Foundation
import Combine
import FirebaseAuth
import FirebaseFirestore

class NewItemViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {
        
    }
    
    func save() {
        guard canSave else {
            return
        }
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: newId,
            title: title,
            createdDate: Date().timeIntervalSince1970,
            dueDate: dueDate.timeIntervalSince1970,
            isDone: false
        )
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        // Prevent saving date that has passed
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
