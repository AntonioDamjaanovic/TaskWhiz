//
//  ToDoListViewModel.swift
//  TaskWhiz
//
//  Created by Antonio Damjanović on 04.12.2025..
//

import Foundation
import Combine
import FirebaseFirestore

class ToDoListViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
