//
//  File.swift
//  
//
//  Created by Ramy Wagdy on 9/16/21.
//

import Foundation

struct LocalizableFileParser {
    private let filePath: String
    private var localizedKeyValue = [String: String]()

    init(filePath: String) {
        self.filePath = filePath
    }

    func parse() -> [String: String] {
        let bundle = Bundle(path: filePath)
        if
            let url = bundle?.url(forResource: "Localizable", withExtension: "strings"),
            let stringsDict = NSDictionary(contentsOf: url) as? [String: String]
        {
            return stringsDict
        }
        fatalError()
    }
}
