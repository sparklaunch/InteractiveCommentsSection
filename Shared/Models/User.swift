//
//  User.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct User: Identifiable {
    let id: UUID = .init()
    let photo: Image
    let name: String
}

extension User: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func ==(lhs: User, rhs: User) -> Bool {
        lhs.name == rhs.name
    }
}

extension User {
    init() {
        self.photo = Image("JuliusOmo")
        self.name = "juliusomo"
    }
}
