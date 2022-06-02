//
//  CommentFooterView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentFooterView: View {
    let votes: Int
    var body: some View {
        HStack {
            CommentVoteView(votes: votes)
            Spacer()
            CommentReplyView()
        }
    }
}
