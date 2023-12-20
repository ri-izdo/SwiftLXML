//
//  SwiftLXML.swift
//
//
//  Created by Roderick Lizardo on 12/20/23.
//

import Foundation

struct SwiftLXML {
    
    func ReadXMLDocument(filePath: String) throws -> Any? {
        do {
            let xmlData = try Data(contentsOf: URL(fileURLWithPath: filePath))
            
            return try XMLDocument(data: xmlData, options: [.nodePrettyPrint,.nodePreserveWhitespace])
            
        } catch {
            print("Error reading XML Document: \(error)")
            
            return nil
        }
    }
}
