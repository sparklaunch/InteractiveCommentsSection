//
//  CommentVoteView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentVoteView: View {
    @EnvironmentObject private var commentManager: CommentManager
    let comment: Comment
    var body: some View {
        HStack(spacing: 16) {
            Button {
                withAnimation {
                    commentManager.upvote(for: comment.id)
                }
            } label: {
                Image(decorative: "Plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16)
            }
            Text(comment.votes, format: .number)
                .font(.title3.bold())
                .foregroundColor(.init("EmphasisColor"))
            Button {
                withAnimation {
                    commentManager.downvote(for: comment.id)
                }
            } label: {
                Image(decorative: "Minus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16)
            }
        }
        .padding(12)
        .background(Color("BackgroundColor"))
        .cornerRadius(15)
    }
}
