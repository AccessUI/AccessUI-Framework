//
//  File.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleFontTheme {
    /// Tamaño pequeño de fuente accesible.
    public static let small: CGFloat = 14
    
    /// Tamaño mediano de fuente accesible.
    public static let medium: CGFloat = 18
    
    /// Tamaño grande de fuente accesible.
    public static let large: CGFloat = 24
    
    /// Estilo regular de fuente accesible.
    public static let regular: Font = .system(size: medium)
    
    /// Estilo en negrita de fuente accesible.
    public static let bold: Font = .system(size: medium, weight: .bold)
    
    /**
     Obtiene una fuente personalizada según el tamaño y el peso especificados.

     - Parameters:
        - size: El tamaño de la fuente deseado.
        - weight: El peso de la fuente deseado, predeterminado es `.regular`.
     
     - Returns: Una instancia de `Font` con el tamaño y peso especificados.
    */
    public static func font(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        return Font.system(size: size, weight: weight)
    }
}
