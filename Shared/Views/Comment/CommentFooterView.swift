//
//  CommentFooterView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentFooterView: View {
    let votes: Int
    let author: User
    var isAuthor: Bool {
        author == User()
    }
    var body: some View {
        HStack {
            CommentVoteView(votes: votes)
            Spacer()
            if isAuthor {
                HStack {
                    CommentDeleteView()
                }
            } else {
                CommentReplyView()
            }
        }
    }
}
