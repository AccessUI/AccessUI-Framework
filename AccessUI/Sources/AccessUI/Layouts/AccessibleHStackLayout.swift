import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleHStackLayout<Content: View>: View {
    // Propiedades del apilamiento horizontal accesible
    public var alignment: VerticalAlignment
    public var spacing: CGFloat?
    public var content: () -> Content
    public var accessibilityLabel: String?
    
    /**
     Inicializa el apilamiento horizontal accesible.

     - Parameters:
        - alignment: El alineamiento vertical de las vistas dentro del apilamiento horizontal.
        - spacing: El espaciado opcional entre las vistas.
        - content: El contenido a mostrar dentro del apilamiento horizontal.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir el apilamiento horizontal.
    */
    public init(alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: @escaping () -> Content, accessibilityLabel: String? = nil) {
        self.alignment = alignment
        self.spacing = spacing
        self.content = content
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        HStack(alignment: alignment, spacing: spacing) {
            content()
        }
        .accessibilityLabel(accessibilityLabel ?? "Horizontal stack layout")
    }
}
