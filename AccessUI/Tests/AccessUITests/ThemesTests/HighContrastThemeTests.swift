//
//  HighContrastThemeTests.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import XCTest
import SwiftUI

@testable import AccessUI

@available(iOS 15.0, *)
class HighContrastThemeTests: XCTestCase {
    
    /**
     Prueba que verifica las propiedades de `HighContrastTheme`.
    */
    func testHighContrastThemeProperties() {
        let highContrastTheme = HighContrastTheme()
        
        XCTAssertEqual(highContrastTheme.primaryColor, .black)
        XCTAssertEqual(highContrastTheme.secondaryColor, .yellow)
        XCTAssertEqual(highContrastTheme.accentColor, .cyan)
        XCTAssertEqual(highContrastTheme.textColor, .white)
        XCTAssertEqual(highContrastTheme.font, AccessibleFontTheme.bold)
    }
    
    /**
     Prueba que verifica la aplicación del tema de alto contraste.
    */
    func testApplyHighContrastTheme() {
        let highContrastTheme = HighContrastTheme()
        highContrastTheme.applyTheme()
        // Aquí puedes agregar más verificaciones para comprobar los efectos de aplicar el tema de alto contraste
    }
}
