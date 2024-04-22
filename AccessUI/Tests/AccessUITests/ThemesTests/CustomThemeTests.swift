//
//  CustomThemeTests.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import XCTest
import SwiftUI

@testable import AccessUI

@available(iOS 15.0, *)
class CustomThemeTests: XCTestCase {
    
    /**
     Prueba que verifica las propiedades de `CustomTheme` con los valores de color y fuente especificados.
    */
    func testCustomThemeProperties() {
        let customTheme = CustomTheme(primaryColor: .red, secondaryColor: .green, accentColor: .blue, textColor: .white, font: Font.system(size: 20))
        
        XCTAssertEqual(customTheme.primaryColor, .red)
        XCTAssertEqual(customTheme.secondaryColor, .green)
        XCTAssertEqual(customTheme.accentColor, .blue)
        XCTAssertEqual(customTheme.textColor, .white)
        XCTAssertEqual(customTheme.font, Font.system(size: 20))
    }
    
    /**
     Prueba que verifica la aplicación del tema personalizado.
    */
    func testApplyCustomTheme() {
        let customTheme = CustomTheme(primaryColor: .red, secondaryColor: .green, accentColor: .blue, textColor: .white, font: Font.system(size: 20))
        customTheme.applyTheme()
        // Aquí puedes agregar más verificaciones, como verificar los colores de la barra de navegación, botones, etc.
    }
}
