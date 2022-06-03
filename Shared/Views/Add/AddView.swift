//
//  AddView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/03.
//

import SwiftUI

struct AddView: View {
    @State private var text: String = ""
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 16) {
                AddTextEditorView(text: $text)
                HStack {
                    Image(decorative: "JuliusOmo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 48)
                    Spacer()
                    AddSendButtonView(text: $text)
                }
            }
            .padding()
        }
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding()
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .previewLayout(.sizeThatFits)
    }
}
