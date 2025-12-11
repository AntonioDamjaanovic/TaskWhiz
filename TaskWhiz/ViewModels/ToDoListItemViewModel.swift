//
//  ToDoListItemViewModel.swift
//  TaskWhiz
//
//  Created by Antonio Damjanović on 04.12.2025..
//

import Foundation
import Combine
import FirebaseAuth
import FirebaseFirestore

class ToDoListItemViewModel: ObservableObject {
    init() {}
    
    func togleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
