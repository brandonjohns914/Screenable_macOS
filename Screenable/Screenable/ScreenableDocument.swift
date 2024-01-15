//
//  ScreenableDocument.swift
//  Screenable
//
//  Created by Brandon Johns on 1/12/24.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

struct ScreenableDocument: FileDocument, Codable {
    static var readableContentTypes = [UTType(exportedAs: "BJ914.screenable")]

    var font = "Helvetica Neue"
    var fontSize = 16
    var caption = ""
    var backgroundImage = ""
    var userImage: Data? 
    
    var captionColor = Color.black
    var backgoundColorTop = Color.clear
    var backgroundColorBottom = Color.clear
    
    var dropShadowLocation = 0
    var dropShadowStrength = 1
    
    init(configuration: ReadConfiguration) throws {
        if let data = configuration.file.regularFileContents {
            self = try JSONDecoder().decode(ScreenableDocument.self, from: data)
        }
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = try JSONEncoder().encode(self)
        return FileWrapper(regularFileWithContents: data)
    }
    
 
    
    init() { }
}
