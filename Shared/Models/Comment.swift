//
//  Comment.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

class Comment: Identifiable, ObservableObject {
    let id: UUID = .init()
    let author: User
    private(set) var writtenDate: Date = .now
    let content: String
    var votes: Int = .zero
    @Published var replies: [Comment] = []
    var replyTo: User?
    var since: String {
        let intervalDifference = Date.now.timeIntervalSince(writtenDate)
        let dayDifference = Int((intervalDifference / 86400.0).rounded())
        switch dayDifference {
        case .zero:
            return "Just now"
        case 1...30:
            return "\(dayDifference) days ago"
        default:
            return "Long ago"
        }
    }
    init(author: User, writtenDate: Date, content: String, votes: Int, replies: [Comment], replyTo: User?) {
        self.author = author
        self.writtenDate = writtenDate
        self.content = content
        self.votes = votes
        self.replies = replies
        self.replyTo = replyTo
    }
}

extension Comment {
    func upvote() {
        votes += 1
    }
    func downvote() {
        votes -= 1
    }
}

extension Comment: Hashable {
    static func ==(lhs: Comment, rhs: Comment) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Comment {
    convenience init(author: User, writtenDate: Date, content: String, votes: Int) {
        self.init(author: author, writtenDate: writtenDate, content: content, votes: votes, replies: [], replyTo: nil)
    }
}

extension Comment {
    convenience init(author: User, writtenDate: Date, content: String, votes: Int, replyTo: User?) {
        self.init(author: author, writtenDate: writtenDate, content: content, votes: votes, replies: [], replyTo: replyTo)
    }
}

extension Comment {
    convenience init(author: User, writtenDate: Date, content: String, votes: Int, replies: [Comment]) {
        self.init(author: author, writtenDate: writtenDate, content: content, votes: votes, replies: replies, replyTo: nil)
    }
}

extension Comment {
    convenience init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        let content = "This is just a random text. I wanted to write more. But I couldn't come up with a brilliant sentence to fill up the preview. The number of lines should be at least 5 or more to properly test the preview. I don't know what to put here."
        let date = dateFormatter.date(from: "2022/05/02 09:59") ?? .now
        self.init(author: .init(), writtenDate: date, content: content, votes: 3, replies: [], replyTo: nil)
    }
}
