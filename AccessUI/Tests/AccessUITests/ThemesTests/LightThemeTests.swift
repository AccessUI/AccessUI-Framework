//
//  LightThemeTests.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import XCTest
import SwiftUI

@testable import AccessUI

@available(iOS 15.0, *)
class LightThemeTests: XCTestCase {
    
    /**
     Prueba que verifica las propiedades de `LightTheme`.
    */
    func testLightThemeProperties() {
        let lightTheme = LightTheme()
        
        XCTAssertEqual(lightTheme.primaryColor, .white)
        XCTAssertEqual(lightTheme.secondaryColor, ColorPalette.secondaryColor)
        XCTAssertEqual(lightTheme.accentColor, .blue)
        XCTAssertEqual(lightTheme.textColor, .black)
        XCTAssertEqual(lightTheme.font, AccessibleFontTheme.regular)
    }
    
    /**
     Prueba que verifica la aplicación del tema claro.
    */
    func testApplyLightTheme() {
        let lightTheme = LightTheme()
        lightTheme.applyTheme()
        // Aquí puedes agregar más verificaciones para comprobar los efectos de aplicar el tema claro
    }
}
