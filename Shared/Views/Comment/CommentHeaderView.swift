//
//  CommentHeaderView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct CommentHeaderView: View {
    let photo: Image
    let name: String
    let since: String
    let author: User
    var isAuthor: Bool {
        author == User()
    }
    var body: some View {
        HStack {
            HStack(spacing: 16) {
                photo
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48)
                HStack(spacing: 6) {
                    Text(name)
                        .font(.title3.bold())
                    if isAuthor {
                        YouBadgeView()
                    }
                }
            }
            Spacer()
            Text(since)
                .font(.title3.bold())
                .foregroundColor(.init("TextColor"))
        }
    }
}
