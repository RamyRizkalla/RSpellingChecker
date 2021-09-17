//
//  File.swift
//  
//
//  Created by Ramy Wagdy on 9/17/21.
//

import Cocoa

public struct SpellingChecker {
    func checkText(_ text: String) {
        let spellChecker = NSSpellChecker()
        let range = spellChecker.checkSpelling(of: text, startingAt: 0)
        print(range)
    }
}
