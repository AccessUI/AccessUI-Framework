//
//  ThemeFactoryTests.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import XCTest
import SwiftUI

@testable import AccessUI

@available(iOS 15.0, *)
class ThemeFactoryTests: XCTestCase {
    
    /**
     Prueba que verifica que `ThemeFactory` puede crear una instancia de `DarkTheme`.
    */
    func testDarkThemeCreation() {
        let theme = ThemeFactory.darkTheme()
        XCTAssertTrue(theme is DarkTheme)
    }
    
    /**
     Prueba que verifica que `ThemeFactory` puede crear una instancia de `LightTheme`.
    */
    func testLightThemeCreation() {
        let theme = ThemeFactory.lightTheme()
        XCTAssertTrue(theme is LightTheme)
    }
    
    /**
     Prueba que verifica que `ThemeFactory` puede crear una instancia de `HighContrastTheme`.
    */
    func testHighContrastThemeCreation() {
        let theme = ThemeFactory.highContrastTheme()
        XCTAssertTrue(theme is HighContrastTheme)
    }
    
    /**
     Prueba que verifica que `ThemeFactory` puede crear una instancia de `CustomTheme` con los parámetros especificados.
    */
    func testCustomThemeCreation() {
        let theme = ThemeFactory.customTheme(primaryColor: .red, secondaryColor: .green, accentColor: .blue, textColor: .white, font: Font.system(size: 20))
        XCTAssertTrue(theme is CustomTheme)
    }
}
