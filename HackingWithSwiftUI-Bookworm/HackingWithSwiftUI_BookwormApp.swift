//
//  HackingWithSwiftUI_BookwormApp.swift
//  HackingWithSwiftUI-Bookworm
//
//  Created by Michael Jones on 23/06/2026.
//

import SwiftData
import SwiftUI

@main
struct HackingWithSwiftUI_BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
