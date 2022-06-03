//
//  CommentEditView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/03.
//

import SwiftUI

struct CommentEditView: View {
    var body: some View {
        Button {
            // TODO: EDIT A COMMENT.
        } label: {
            HStack {
                Image(decorative: "Edit")
                    .resizable()
                    .scaledToFit()
                .frame(width: 16)
                Text("Edit")
                    .font(.title3.bold())
                    .foregroundColor(.init("EmphasisColor"))
            }
        }
    }
}

struct CommentEditView_Previews: PreviewProvider {
    static var previews: some View {
        CommentEditView()
            .previewLayout(.sizeThatFits)
    }
}
