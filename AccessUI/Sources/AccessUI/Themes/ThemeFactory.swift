//
//  File.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public class ThemeFactory {
    /**
     Crea un tema oscuro.

     - Returns: Una instancia de `DarkTheme`.
    */
    public static func darkTheme() -> Theme {
        return DarkTheme()
    }
    
    /**
     Crea un tema claro.

     - Returns: Una instancia de `LightTheme`.
    */
    public static func lightTheme() -> Theme {
        return LightTheme()
    }
    
    /**
     Crea un tema de alto contraste.

     - Returns: Una instancia de `HighContrastTheme`.
    */
    public static func highContrastTheme() -> Theme {
        return HighContrastTheme()
    }
    
    /**
     Crea un tema personalizado.

     - Parameters:
        - primaryColor: El color primario del tema.
        - secondaryColor: El color secundario del tema.
        - accentColor: El color de acento del tema.
        - textColor: El color de texto del tema.
        - font: La fuente del tema.
     
     - Returns: Una instancia de `CustomTheme` configurada con los colores y la fuente especificados.
    */
    public static func customTheme(primaryColor: Color, secondaryColor: Color, accentColor: Color, textColor: Color, font: Font) -> Theme {
        return CustomTheme(primaryColor: primaryColor, secondaryColor: secondaryColor, accentColor: accentColor, textColor: textColor, font: font)
    }
}
