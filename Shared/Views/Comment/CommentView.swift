//
//  CommentView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentView: View {
    var isReply: Bool = false
    let comment: Comment
    var body: some View {
        HStack {
            if isReply {
                HorizontalDividerView()
            }
            VStack(spacing: .zero) {
                ZStack {
                    Color.white
                    VStack {
                        VStack(alignment: .leading, spacing: 16) {
                            CommentHeaderView(photo: comment.author.photo, name: comment.author.name, since: comment.since)
                            CommentContentView(replyTo: comment.replyTo?.name, content: comment.content)
                            CommentFooterView(votes: comment.votes)
                        }
                        .padding()
                    }
                }
                .cornerRadius(15)
                .shadow(radius: 5)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal)
                .padding(.vertical, 8)
                if !comment.replies.isEmpty {
                    ForEach(comment.replies) { reply in
                        CommentView(isReply: true, comment: reply)
                    }
                }
            }
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(comment: .init())
            .previewLayout(.sizeThatFits)
    }
}
