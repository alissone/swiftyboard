//
//  KeyboardView.swift
//  Custom Keyboard
//
//  Created by Alisson Damasceno on 30/07/23.
//  Copyright © 2023 Alberto Xamin. All rights reserved.
//

import SwiftUI

class KeyboardColors {
    static let backgroundColor = Color(
        red: 43 / 255,
        green: 43 / 255,
        blue: 43 / 255
    )
    static let darkKeyColor = Color(
        red: 70 / 255,
        green: 70 / 255,
        blue: 70 / 255
    )
    static let lightKeyColor = Color(
        red: 106 / 255,
        green: 106 / 255,
        blue: 106 / 255
    )
    static let pressedKeyColor = Color(
        red: 107 / 255,
        green: 107 / 255,
        blue: 107 / 255
    )
}

enum KeyMode {
    case lower, upper, numeric, symbol, emoji
}

struct KeyboardView: View {
    var keyHandler: ((String) -> Void)
    
    let lowercaseLayout: [[String]] = [
        ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
        ["a", "s", "d", "f", "g", "h", "j", "k", "l"],
        ["<shift>", "z", "x", "c", "v", "b", "n", "m", "⌫"]
    ]
    
    let uppercaseLayout: [[String]] = [
        ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"],
        ["A", "S", "D", "F", "G", "H", "J", "K", "L"],
        ["<shift>", "Z", "X", "C", "V", "B", "N", "M", "⌫"]
    ]
    
    @State private var keyboardMode = KeyMode.lower
    
    var body: some View {
        VStack(spacing: 8) {
            
            VStack(spacing: 11) {
                
                ForEach((keyboardMode == KeyMode.lower ? lowercaseLayout : uppercaseLayout), id: \.self) { row in
                    HStack(spacing: 3) {
                        ForEach(row, id: \.self) { key in
                            if (key == "<shift>") {
                                KeyboardSymbolButton(symbolName:
                                                        (keyboardMode == KeyMode.lower) ?
                                                     "shift" : "shift.fill", action: {
                                    
                                    keyboardMode = (keyboardMode == KeyMode.lower) ? KeyMode.upper : KeyMode.lower
                                })
                            } else {
                                KeyboardLetterButton(title: key, action: {
                                    keyHandler(key)
                                })
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .background(KeyboardColors.backgroundColor.edgesIgnoringSafeArea(.all))
        .foregroundColor(.white)
    }
}

enum KeyWidth {
    case small, medium, large, spacebar
}

func getKeyWidth(preset: KeyWidth) -> Int {
    switch preset {
    case .small:
        return 33
    case .medium:
        return 44
    case .large:
        return 92
    case .spacebar:
        return 190
    }
}


struct KeyboardLetterButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 20))
                .frame(width: 33, height: 44)
                .background(KeyboardColors.lightKeyColor)
                .cornerRadius(7)
        }
    }
}

struct KeyboardSymbolButton: View {
    let symbolName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: symbolName)
                .font(.system(size: 18.0))
                .frame(width: 33, height: 44)
                .background(KeyboardColors.lightKeyColor)
                .cornerRadius(7)
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    func emptyFunction(str: String) {
        print(str)
    }

    static var previews: some View {
        KeyboardView(keyHandler: emptyFunction as! (String) -> Void)
    }
}
