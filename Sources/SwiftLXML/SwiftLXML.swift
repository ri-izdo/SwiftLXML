//
//  SwiftLXML.swift
//
//
//  Created by Roderick Lizardo on 12/20/23.
//

import Foundation

public struct SwiftLXML {
    public init() {}
    
//    public func ReadXMLDocument(filePath: String) throws -> XMLDocument {
//        do {
//            let xmlData = try Data(contentsOf: URL(fileURLWithPath: filePath))
//            
//            return try XMLDocument(data: xmlData, options: [.nodePrettyPrint,.nodePreserveWhitespace])
//            
//        } catch {
//            print("Error reading XML Document: \(error)")
//            return nil
//        }
//    }
    
    public func xmlNodes(filePath: String, xpath: String) throws -> [XMLNode] {
        let xmlData = try Data(contentsOf: URL(fileURLWithPath: filePath))
        let xmlDoc = try XMLDocument(data: xmlData, options: [.nodePrettyPrint,.nodePreserveWhitespace])
        return try xmlDoc.nodes(forXPath: xpath)
    }
}

