import Foundation
import SwiftUI

class KeyboardKey {
    let name: String
    let icon: String
    let displayText: String
    let isSpecialKey: Bool
    let keyWidth: KeyWidth
    let keyColor: Color

    init(name: String, icon: String, displayText: String, isSpecialKey: Bool = false, keyWidth: KeyWidth = .small, keyColor: Color = KeyboardColors.lightKeyColor) {
        self.name = name
        self.icon = icon
        self.displayText = displayText
        self.isSpecialKey = isSpecialKey
        self.keyWidth = keyWidth
        self.keyColor = keyColor
    }
}

class KeyboardKeys {
    static let lowercaseLetters: [KeyboardKey] = {
        let letters = "abcdefghijklmnopqrstuvwxyz"
        return letters.map { letter in
            KeyboardKey(name: String(letter), icon: "", displayText: String(letter))
        }
    }()

    static let uppercaseLetters: [KeyboardKey] = {
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        return letters.map { letter in
            KeyboardKey(name: "<shift>\(letter.lowercased())", icon: "", displayText: String(letter), isSpecialKey: true)
        }
    }()

    static let numbers: [KeyboardKey] = {
        let digits = "0123456789"
        return digits.map { digit in
            KeyboardKey(name: String(digit), icon: "", displayText: String(digit))
        }
    }()

    static let symbols: [KeyboardKey] = [
        KeyboardKey(name: "<shift>!", icon: "", displayText: "!", isSpecialKey: true),
        KeyboardKey(name: "<shift>@", icon: "", displayText: "@", isSpecialKey: true),
        KeyboardKey(name: "<shift>#", icon: "", displayText: "#", isSpecialKey: true),
        KeyboardKey(name: "<shift>$", icon: "", displayText: "$", isSpecialKey: true),
        KeyboardKey(name: "<shift>%", icon: "", displayText: "%", isSpecialKey: true),
        KeyboardKey(name: "<shift>^", icon: "", displayText: "^", isSpecialKey: true),
        KeyboardKey(name: "<shift>&", icon: "", displayText: "&", isSpecialKey: true),
        KeyboardKey(name: "<shift>*", icon: "", displayText: "*", isSpecialKey: true),
        KeyboardKey(name: "(", icon: "", displayText: "("),
        KeyboardKey(name: ")", icon: "", displayText: ")"),
        KeyboardKey(name: "-", icon: "", displayText: "-"),
        KeyboardKey(name: "=", icon: "", displayText: "="),
        KeyboardKey(name: "/", icon: "", displayText: "/"),
        KeyboardKey(name: ":", icon: "", displayText: ":"),
        KeyboardKey(name: ";", icon: "", displayText: ";"),
        KeyboardKey(name: ",", icon: "", displayText: ","),
        KeyboardKey(name: ".", icon: "", displayText: "."),
        KeyboardKey(name: "?", icon: "", displayText: "?"),
        KeyboardKey(name: "<shift>_", icon: "", displayText: "_", isSpecialKey: true),
        KeyboardKey(name: "<shift>\"", icon: "", displayText: "\"", isSpecialKey: true),
        KeyboardKey(name: "<shift>'", icon: "", displayText: "'", isSpecialKey: true),
        KeyboardKey(name: "<shift>:", icon: "", displayText: ":", isSpecialKey: true),
        KeyboardKey(name: "<shift>;", icon: "", displayText: ";", isSpecialKey: true),
        KeyboardKey(name: "<shift>[", icon: "", displayText: "[", isSpecialKey: true),
        KeyboardKey(name: "<shift>]", icon: "", displayText: "]", isSpecialKey: true),
        KeyboardKey(name: "<shift>{", icon: "", displayText: "{", isSpecialKey: true),
        KeyboardKey(name: "<shift>}", icon: "", displayText: "}", isSpecialKey: true),
        KeyboardKey(name: "<shift>|", icon: "", displayText: "|", isSpecialKey: true),
        KeyboardKey(name: "<shift>~", icon: "", displayText: "~", isSpecialKey: true),
        KeyboardKey(name: "<shift>`", icon: "", displayText: "`", isSpecialKey: true),
        KeyboardKey(name: "<shift>\\", icon: "", displayText: "\\", isSpecialKey: true),
        KeyboardKey(name: "<shift><", icon: "", displayText: "<", isSpecialKey: true),
        KeyboardKey(name: "<shift>>", icon: "", displayText: ">", isSpecialKey: true),
        KeyboardKey(name: "<shift>+", icon: "", displayText: "+", isSpecialKey: true)
    ]
}
