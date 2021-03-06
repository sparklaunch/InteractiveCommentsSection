//
//  AddTextEditorView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/03.
//

import SwiftUI

struct AddTextEditorView: View {
    @EnvironmentObject private var commentManager: CommentManager
    @Binding var text: String
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text("Add a comment…")
                    .bold()
                    .foregroundColor(.init("TextColor"))
                    .padding(.vertical)
                    .padding(.horizontal, 12)
            }
            TextEditor(text: $text)
                .foregroundColor(.init("TextColor"))
                .lineSpacing(5)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .stroke(Color("DividerColor"), lineWidth: 2)
                )
                .frame(height: 120)
                .opacity(text.isEmpty ? 0.25 : 1.0)
                .onSubmit {
                    if !text.isEmpty {
                        commentManager.addComment(with: text)
                    }
                }
        }
    }
}

struct AddTextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        AddTextEditorView(text: .constant("Hello, World!!"))
            .environmentObject(CommentManager())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
