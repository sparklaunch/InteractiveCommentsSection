//
//  YouBadgeView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/03.
//

import SwiftUI

struct YouBadgeView: View {
    var body: some View {
        Text("you")
            .font(.footnote.bold())
            .foregroundColor(.white)
            .padding(3)
            .padding(.horizontal, 3)
            .background(Color("EmphasisColor"))
    }
}

struct YouBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        YouBadgeView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
