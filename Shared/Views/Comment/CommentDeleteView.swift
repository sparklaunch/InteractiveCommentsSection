//
//  CommentDeleteView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/03.
//

import SwiftUI

struct CommentDeleteView: View {
    var body: some View {
        Button {
            // TODO: DELETE A COMMENT.
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
    }
}

struct CommentDeleteView_Previews: PreviewProvider {
    static var previews: some View {
        CommentDeleteView()
            .previewLayout(.sizeThatFits)
    }
}
