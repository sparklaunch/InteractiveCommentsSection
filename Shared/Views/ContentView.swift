//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack {

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
