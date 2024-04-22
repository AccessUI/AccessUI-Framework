//
//  ColorPaletteTests.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import XCTest
import SwiftUI

@testable import AccessUI

@available(iOS 15.0, *)
class ColorPaletteTests: XCTestCase {
    
    /**
     Prueba que verifica los colores de `ColorPalette`.
    */
    func testColorPalette() {
        XCTAssertEqual(ColorPalette.primaryColor, Color.blue)
        XCTAssertEqual(ColorPalette.secondaryColor, Color.gray)
        XCTAssertEqual(ColorPalette.accentColor, Color.orange)
        XCTAssertEqual(ColorPalette.errorColor, Color.red)
        XCTAssertEqual(ColorPalette.successColor, Color.green)
    }
}
