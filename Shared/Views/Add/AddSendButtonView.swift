//
//  AddSendButtonView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/03.
//

import SwiftUI

struct AddSendButtonView: View {
    var body: some View {
        Button {
            // TODO: SEND A COMMENT.
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
        AddSendButtonView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
