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

struct CommentHeaderView: View {
    let photo: Image
    let name: String
    let since: String
    var body: some View {
        HStack {
            HStack(spacing: 16) {
                photo
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48)
                Text(name)
                    .font(.title3.bold())
            }
            Spacer()
            Text(since)
                .font(.title3.bold())
                .foregroundColor(.init("TextColor"))
        }
    }
}

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

struct HorizontalDividerView: View {
    var body: some View {
        Rectangle()
            .frame(width: 3)
            .foregroundColor(.init("DividerColor"))
            .padding([.leading])
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(comment: .init())
            .previewLayout(.sizeThatFits)
    }
}
