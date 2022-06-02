//
//  User.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct User: Identifiable {
    let id: UUID = .init()
    let photo: Image
    let name: String
}
