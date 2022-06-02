//
//  CommentReplyView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentReplyView: View {
    var body: some View {
        Button {
            // TODO: REPLY.
        } label: {
            HStack {
                Image(decorative: "Reply")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16)
                Text("Reply")
                    .font(.title3.bold())
                    .foregroundColor(.init("EmphasisColor"))
            }
        }
    }
}
