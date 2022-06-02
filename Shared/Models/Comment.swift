//
//  Comment.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct Comment: Identifiable {
    let id: UUID = .init()
    let author: User
    let writtenDate: Date
    let content: String
    let votes: Int
    var replies: [Comment] = []
}
