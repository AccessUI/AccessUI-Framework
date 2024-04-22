//
//  DarkThemeTests.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import XCTest
import SwiftUI

@testable import AccessUI

@available(iOS 15.0, *)
class DarkThemeTests: XCTestCase {
    
    /**
     Prueba que verifica las propiedades de `DarkTheme`.
    */
    func testDarkThemeProperties() {
        let darkTheme = DarkTheme()
        
        XCTAssertEqual(darkTheme.primaryColor, .black)
        XCTAssertEqual(darkTheme.secondaryColor, ColorPalette.secondaryColor)
        XCTAssertEqual(darkTheme.accentColor, .purple)
        XCTAssertEqual(darkTheme.textColor, .white)
        XCTAssertEqual(darkTheme.font, AccessibleFontTheme.regular)
    }
    
    /**
     Prueba que verifica la aplicación del tema oscuro.
    */
    func testApplyDarkTheme() {
        let darkTheme = DarkTheme()
        darkTheme.applyTheme()
        // Aquí puedes agregar más verificaciones para comprobar los efectos de aplicar el tema oscuro
    }
}
