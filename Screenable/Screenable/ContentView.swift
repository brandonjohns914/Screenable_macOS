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
        HStack(spacing: 20) {
            RenderView(document: document)
            
            VStack(alignment: .leading) {
                Text("Caption")
                    .bold()
                TextEditor(text: $document.caption	)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(document: .constant(ScreenableDocument()))
}
