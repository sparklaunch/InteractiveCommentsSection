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
    var writtenDate: Date = .now
    let content: String
    var votes: Int = .zero
    var replies: [Comment] = []
    var replyTo: User?
    var since: String {
        let intervalDifference = Date.now.timeIntervalSince(writtenDate)
        let dayDifference = Int((intervalDifference / 86400.0).rounded())
        return "\(dayDifference) days ago"
    }
}

extension Comment {
    init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        self.author = .init()
        self.writtenDate = dateFormatter.date(from: "2022/05/02 09:59") ?? .now
        self.content = "This is just a random text. I wanted to write more. But I couldn't come up with a brilliant sentence to fill up the preview. The number of lines should be at least 5 or more to properly test the preview. I don't know what to put here."
        self.votes = 3
    }
}
