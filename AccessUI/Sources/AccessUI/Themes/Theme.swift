//
//  File.swift
//  
//
//  Created by iDesign on 21/04/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public protocol Theme {
    /// Color primario del tema.
    var primaryColor: Color { get }
    
    /// Color secundario del tema.
    var secondaryColor: Color { get }
    
    /// Color de acento del tema.
    var accentColor: Color { get }
    
    /// Color de texto del tema.
    var textColor: Color { get }
    
    /// Fuente del tema.
    var font: Font { get }
    
    /**
     Aplica el tema a la interfaz de usuario.
     
     Este método debe ser implementado por las clases concretas que conforman un tema. Se encarga de aplicar los colores, fuentes y estilos definidos por el tema a los elementos de la interfaz de usuario de la aplicación.
    */
    func applyTheme()
}
