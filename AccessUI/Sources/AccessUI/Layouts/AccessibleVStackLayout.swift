import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleVStackLayout<Content: View>: View {
    // Propiedades del apilamiento vertical accesible
    public var alignment: HorizontalAlignment
    public var spacing: CGFloat?
    public var content: () -> Content
    public var accessibilityLabel: String?
    
    /**
     Inicializa el apilamiento vertical accesible.

     - Parameters:
        - alignment: El alineamiento horizontal de las vistas dentro del apilamiento vertical.
        - spacing: El espaciado opcional entre las vistas.
        - content: El contenido a mostrar dentro del apilamiento vertical.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir el apilamiento vertical.
    */
    public init(alignment: HorizontalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: @escaping () -> Content, accessibilityLabel: String? = nil) {
        self.alignment = alignment
        self.spacing = spacing
        self.content = content
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        VStack(alignment: alignment, spacing: spacing) {
            content()
        }
        .accessibilityLabel(accessibilityLabel ?? "Vertical stack layout")
    }
}
