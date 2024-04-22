import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleLazyHGridLayout<Content: View>: View {
    // Propiedades de la cuadrícula horizontal perezosa accesible
    public var rows: [GridItem]
    public var content: () -> Content
    public var accessibilityLabel: String?
    
    /**
     Inicializa la cuadrícula horizontal perezosa accesible.

     - Parameters:
        - rows: Una lista de filas para la cuadrícula.
        - content: El contenido a mostrar dentro de la cuadrícula.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir la cuadrícula.
    */
    public init(rows: [GridItem], @ViewBuilder content: @escaping () -> Content, accessibilityLabel: String? = nil) {
        self.rows = rows
        self.content = content
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        LazyHGrid(rows: rows) {
            content()
        }
        .accessibilityLabel(accessibilityLabel ?? "Lazy horizontal grid layout")
    }
}
