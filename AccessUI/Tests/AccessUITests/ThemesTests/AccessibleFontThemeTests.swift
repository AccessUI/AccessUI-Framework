//
//  AccessibleFontThemeTests.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import XCTest
import SwiftUI

@testable import AccessUI

@available(iOS 15.0, *)
class AccessibleFontThemeTests: XCTestCase {
    
    /**
     Prueba que verifica los tamaños de fuente accesibles definidos en `AccessibleFontTheme`.
    */
    func testFontSizes() {
        XCTAssertEqual(AccessibleFontTheme.small, 14)
        XCTAssertEqual(AccessibleFontTheme.medium, 18)
        XCTAssertEqual(AccessibleFontTheme.large, 24)
    }
    
    /**
     Prueba que verifica los estilos de fuente accesibles definidos en `AccessibleFontTheme`.
    */
    func testFontStyles() {
        XCTAssertEqual(AccessibleFontTheme.regular, Font.system(size: AccessibleFontTheme.medium))
        XCTAssertEqual(AccessibleFontTheme.bold, Font.system(size: AccessibleFontTheme.medium, weight: .bold))
    }
    
    /**
     Prueba que verifica que `AccessibleFontTheme.font` devuelve una fuente personalizada según los parámetros proporcionados.
    */
    func testCustomFont() {
        let font = AccessibleFontTheme.font(size: 20, weight: .bold)
        XCTAssertEqual(font, Font.system(size: 20, weight: .bold))
    }
}
