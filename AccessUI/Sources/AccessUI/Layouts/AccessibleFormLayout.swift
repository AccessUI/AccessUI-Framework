import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleFormLayout<Content: View>: View {
    // Propiedades del formulario accesible
    public var content: () -> Content
    public var accessibilityLabel: String?
    
    /**
     Inicializa el formulario accesible.

     - Parameters:
        - content: El contenido a mostrar dentro del formulario.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir el formulario.
    */
    public init(@ViewBuilder content: @escaping () -> Content, accessibilityLabel: String? = nil) {
        self.content = content
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        Form {
            content()
        }
        .accessibilityLabel(accessibilityLabel ?? "Form layout")
    }
}
