//
//  HorizontalDividerView.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

struct HorizontalDividerView: View {
    var body: some View {
        Rectangle()
            .frame(width: 3)
            .foregroundColor(.init("DividerColor"))
            .padding([.leading])
    }
}
