//
//  DummyData.swift
//  Interactive Comments Section (iOS)
//
//  Created by Jinwook Kim on 2022/06/02.
//

import SwiftUI

class CommentManager: ObservableObject {
    @Published var dummyComments: [Comment]
    init() {
        let julius = User(photo: .init("JuliusOmo"), name: "juliusomo")
        let amy = User(photo: .init("AmyRobson"), name: "amyrobson")
        let max = User(photo: .init("MaxBlagun"), name: "maxblagun")
        let ramses = User(photo: .init("RamsesMiron"), name: "ramsesmiron")
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        self.dummyComments = [
            .init(author: amy, writtenDate: dateFormatter.date(from: "2022/05/02 09:41") ?? .now, content: """
Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You've nailed the design and the responsiveness at various breakpoints works really well.
""", votes: 12),
            .init(author: max, writtenDate: dateFormatter.date(from: "2022/05/24 09:43") ?? .now, content: """
Woah, your project looks awesome! How long have you been coding for? I'm still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React?
Thanks!
""", votes: 5, replies: [
    .init(author: ramses, writtenDate: dateFormatter.date(from: "2022/05/24 10:43") ?? .now, content: """
If you're still new, I'd recommend focusing on the fundamentals of HTML, CSS, and JS before considering React. It's very tempting to jump ahead but lay a solid foundation first.
""", votes: 4)
]), .init(author: julius, writtenDate: dateFormatter.date(from: "2022/05/25 09:46") ?? .now, content: """
I couldn't agree more with this. Everything moves so fast and it always seems like everyone knows the newest library/framework. But the fundamentals are what stay constant.
""", votes: 2)
        ]
    }
}
