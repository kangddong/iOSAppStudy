//
//  Todo.swift
//  TodoList
//
//  Created by 강동영 on 2022/05/23.
//

import Foundation

struct Todo: Codable, Equatable {
    let id: Int
    var isDone: Bool
    var detail: String
    var isToday: Bool
    
    mutating func update(isDone: Bool, detail: String, isToday: Bool) {
        // TODO: update 로직 추가
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return true
    }
}

class TodoManager {
    
}
