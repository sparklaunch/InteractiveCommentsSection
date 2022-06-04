//
//  CommentFooterView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentFooterView: View {
    let comment: Comment
    var isAuthor: Bool {
        comment.author == User()
    }
    var body: some View {
        HStack {
            CommentVoteView(comment: comment)
            Spacer()
            if isAuthor {
                HStack(spacing: 12) {
                    CommentDeleteView()
                    CommentEditView()
                }
            } else {
                CommentReplyView()
            }
        }
    }
}
