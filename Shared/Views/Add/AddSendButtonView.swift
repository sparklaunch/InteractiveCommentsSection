//
//  AddSendButtonView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/03.
//

import SwiftUI

struct AddSendButtonView: View {
    @EnvironmentObject private var commentManager: CommentManager
    @Binding var text: String
    var body: some View {
        Button {
            commentManager.addComment(with: text)
            text = ""
        } label: {
            Text("SEND")
                .font(.title3.bold())
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color("EmphasisColor"))
                .cornerRadius(15)
        }
    }
}

struct AddSendButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddSendButtonView(text: .constant("Hello, World!!"))
            .environmentObject(CommentManager())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
