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
