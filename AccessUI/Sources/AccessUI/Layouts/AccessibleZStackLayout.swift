import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleZStackLayout<Content: View>: View {
    // Propiedades del apilamiento en profundidad accesible
    public var alignment: Alignment
    public var content: () -> Content
    public var accessibilityLabel: String?
    
    /**
     Inicializa el apilamiento en profundidad accesible.

     - Parameters:
        - alignment: El alineamiento de las vistas dentro del apilamiento en profundidad.
        - content: El contenido a mostrar dentro del apilamiento en profundidad.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir el apilamiento en profundidad.
    */
    public init(alignment: Alignment = .center, @ViewBuilder content: @escaping () -> Content, accessibilityLabel: String? = nil) {
        self.alignment = alignment
        self.content = content
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        ZStack(alignment: alignment) {
            content()
        }
        .accessibilityLabel(accessibilityLabel ?? "Z-Stack layout")
    }
}
