//
//  File 2.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public struct DarkTheme: Theme {
    public let primaryColor: Color = .black
    public let secondaryColor: Color = ColorPalette.secondaryColor
    public let accentColor: Color = .purple
    public let textColor: Color = .white
    public let font: Font = AccessibleFontTheme.regular
    
    public init() {}
    
    /**
     Aplica el tema oscuro a la interfaz de usuario.

     Establece los colores y la fuente definidos por el tema en elementos como la barra de navegación y otras vistas.
    */
    public func applyTheme() {
        // Convierte los colores de SwiftUI a UIColor
        UINavigationBar.appearance().barTintColor = primaryColor.toUIColor()
        UINavigationBar.appearance().tintColor = accentColor.toUIColor()
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: textColor.toUIColor()]
        
        // Configura otros elementos de la interfaz de usuario según el tema oscuro
        // Por ejemplo, botones, vistas, campos de texto, etc.
    }
}

