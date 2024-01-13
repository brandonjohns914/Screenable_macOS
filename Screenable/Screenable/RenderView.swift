//
//  RenderView.swift
//  Screenable
//
//  Created by Brandon Johns on 1/12/24.
//

import SwiftUI

struct RenderView: View {
    let document: ScreenableDocument
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    var document = ScreenableDocument()
    document.caption = "Hello, World"
    return RenderView(document: document)
}
