//
//  File.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public struct CustomTheme: Theme {
    public let primaryColor: Color
    public let secondaryColor: Color
    public let accentColor: Color
    public let textColor: Color
    public let font: Font
    
    /**
     Inicializa una instancia de `CustomTheme` con los colores y la fuente especificados.
     
     - Parameters:
        - primaryColor: El color primario del tema.
        - secondaryColor: El color secundario del tema.
        - accentColor: El color de acento del tema.
        - textColor: El color de texto del tema.
        - font: La fuente del tema.
    */
    public init(primaryColor: Color, secondaryColor: Color, accentColor: Color, textColor: Color, font: Font) {
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.accentColor = accentColor
        self.textColor = textColor
        self.font = font
    }
    
    /**
     Aplica el tema personalizado a la interfaz de usuario.

     Establece los colores y la fuente definidos por el tema en elementos como la barra de navegación y otras vistas.
    */
    public func applyTheme() {
        // Convierte los colores de SwiftUI a UIColor
        UINavigationBar.appearance().barTintColor = primaryColor.toUIColor()
        UINavigationBar.appearance().tintColor = accentColor.toUIColor()
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: textColor.toUIColor()]
        
        // Configura otros elementos de la interfaz de usuario según el tema personalizado
        // Por ejemplo, botones, vistas, campos de texto, etc.
    }
}

