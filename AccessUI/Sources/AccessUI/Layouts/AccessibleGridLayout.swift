import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleGridLayout<Content: View>: View {
    // Propiedades de la cuadrícula accesible
    public var columns: [GridItem]
    public var content: () -> Content
    public var accessibilityLabel: String?
    
    /**
     Inicializa la cuadrícula accesible.

     - Parameters:
        - columns: Una lista de columnas para la cuadrícula.
        - content: El contenido a mostrar dentro de la cuadrícula.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir la cuadrícula.
    */
    public init(columns: [GridItem], @ViewBuilder content: @escaping () -> Content, accessibilityLabel: String? = nil) {
        self.columns = columns
        self.content = content
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        LazyVGrid(columns: columns) {
            content()
        }
        .accessibilityLabel(accessibilityLabel ?? "Grid layout")
    }
}
