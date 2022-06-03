//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var commentManager: CommentManager
    @Namespace private var bottomMost
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollViewReader { proxy in
                ScrollView {
                    VStack {
                        ForEach(commentManager.comments) { comment in
                            CommentView(comment: comment)
                        }
                        AddView()
                            .id(bottomMost)
                    }
                }
                .onChange(of: commentManager.comments) { _ in
                    withAnimation {
                        proxy.scrollTo(bottomMost, anchor: .bottom)
                    }
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
