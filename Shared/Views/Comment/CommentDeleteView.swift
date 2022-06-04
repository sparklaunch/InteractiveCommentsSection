//
//  CommentDeleteView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/03.
//

import SwiftUI

struct CommentDeleteView: View {
    @EnvironmentObject private var commentManager: CommentManager
    let comment: Comment
    @State private var isAlertVisible = false
    var body: some View {
        Button {
            withAnimation {
                isAlertVisible = true
            }
        } label: {
            HStack {
                Image(decorative: "Delete")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16)
                Text("Delete")
                    .font(.title3.bold())
                    .foregroundColor(.init("DeleteColor"))
            }
        }
        .alert("Delete comment", isPresented: $isAlertVisible) {
            Button("Delete", role: .destructive) {
                withAnimation {
                    commentManager.delete(comment.id)
                }
            }
        } message: {
            Text("Are you sure you want to delete this comment? This will remove the comment and can't be undone.")
        }
    }
}

struct CommentDeleteView_Previews: PreviewProvider {
    static var previews: some View {
        CommentDeleteView(comment: .init())
            .environmentObject(CommentManager())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
