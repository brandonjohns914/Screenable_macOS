//
//  ContentView.swift
//  Screenable
//
//  Created by Brandon Johns on 1/12/24.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: ScreenableDocument
    var body: some View {
        TextEditor(text: $document.caption)
    }
}

#Preview {
    ContentView(document: .constant(ScreenableDocument()))
}
