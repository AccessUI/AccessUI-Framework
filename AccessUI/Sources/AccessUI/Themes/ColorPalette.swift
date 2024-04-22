//
//  File.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public struct ColorPalette {
    /// Color primario de la paleta.
    public static let primaryColor: Color = .blue
    
    /// Color secundario de la paleta.
    public static let secondaryColor: Color = .gray
    
    /// Color de acento de la paleta.
    public static let accentColor: Color = .orange
    
    /// Color de error de la paleta.
    public static let errorColor: Color = .red
    
    /// Color de éxito de la paleta.
    public static let successColor: Color = .green
}

@available(iOS 15.0, *)
extension Color {
    /**
     Convierte un Color de SwiftUI a un UIColor.

     - Returns: Una instancia de UIColor que representa el Color de SwiftUI.
    */
    func toUIColor() -> UIColor {
        // Utiliza UIColor con un color creado a partir de cgColor
        guard let cgColor = self.cgColor else {
            // Fallback si no se puede obtener cgColor
            return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        }
        return UIColor(cgColor: cgColor)
    }
}
