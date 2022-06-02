//
//  CommentVoteView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentVoteView: View {
    let votes: Int
    var body: some View {
        HStack(spacing: 16) {
            Button {
                // TODO: UPVOTE.
            } label: {
                Image(decorative: "Plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16)
            }
            Text(votes, format: .number)
                .font(.title3.bold())
                .foregroundColor(.init("EmphasisColor"))
            Button {
                // TODO: DOWNVOTE.
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
