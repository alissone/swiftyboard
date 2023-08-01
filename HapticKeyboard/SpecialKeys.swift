//
//  SpecialKeys.swift
//  HapticKeyboard
//
//  Created by Alisson Damasceno on 01/08/23.
//  Copyright © 2023 Alberto Xamin. All rights reserved.
//

import Foundation

class SpecialKeys {
    static let shift = "<shift>"
    static let numpad = "<numpad>"
    static let emoji = "<emoji>"
    static let spacebar = "<spacebar>"
    static let backspace = "<backspace>"
    static let enter = "<return>"
    
    static func isSpecialKey(key: String) -> Bool {
        return [
            SpecialKeys.shift,
            SpecialKeys.numpad,
            SpecialKeys.emoji,
            SpecialKeys.backspace,
            SpecialKeys.spacebar,
            SpecialKeys.enter,
        ].contains(key)
    }
}

