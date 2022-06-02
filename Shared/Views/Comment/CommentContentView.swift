//
//  CommentContentView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentContentView: View {
    var replyTo: String?
    let content: String
    var body: some View {
        if let replyTo = replyTo {
            let replyText = Text("@\(replyTo)")
                .bold()
                .foregroundColor(.init("EmphasisColor"))
            let contentText = Text(content)
                .foregroundColor(.init("TextColor"))
            return Text("\(replyText) \(contentText)")
                .lineSpacing(5)
        } else {
            return Text(content)
                .foregroundColor(.init("TextColor"))
                .lineSpacing(5)
        }
    }
}
