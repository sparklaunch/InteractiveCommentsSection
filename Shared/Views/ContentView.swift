//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var commentManager: CommentManager
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack {
                    ForEach(commentManager.comments) { comment in
                        CommentView(comment: comment)
                    }
                    AddView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CommentManager())
    }
}
