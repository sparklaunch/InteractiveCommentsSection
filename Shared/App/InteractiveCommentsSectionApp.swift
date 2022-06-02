//
//  InteractiveCommentsSectionApp.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

@main
struct InteractiveCommentsSectionApp: App {
    @StateObject private var commentManager: CommentManager = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(commentManager)
        }
    }
}
