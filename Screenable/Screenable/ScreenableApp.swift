//
//  ScreenableApp.swift
//  Screenable
//
//  Created by Brandon Johns on 1/12/24.
//

import SwiftUI

@main
struct ScreenableApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: ScreenableDocument()) { file in
            ContentView(document: file.$document)
        }
        .commands{
            CommandMenu("Export") {
                Button("Export as PNG") {
                    NSApp.sendAction(#selector(AppCommands.export), to: nil, from: nil)
                }
                .keyboardShortcut("e")
            }
        }
    }
    
}

@objc protocol AppCommands {
    func export()
}
