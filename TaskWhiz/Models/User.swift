//
//  User.swift
//  TaskWhiz
//
//  Created by Antonio Damjanović on 04.12.2025..
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
