import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleScrollViewLayout<Content: View>: View {
    // Propiedades de la vista con desplazamiento accesible
    public var content: () -> Content
    public var showsIndicators: Bool
    public var accessibilityLabel: String?
    
    /**
     Inicializa la vista con desplazamiento accesible.

     - Parameters:
        - content: El contenido a mostrar dentro de la vista con desplazamiento.
        - showsIndicators: Un indicador opcional para mostrar o no los indicadores de desplazamiento.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir la vista con desplazamiento.
    */
    public init(@ViewBuilder content: @escaping () -> Content, showsIndicators: Bool = true, accessibilityLabel: String? = nil) {
        self.content = content
        self.showsIndicators = showsIndicators
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        ScrollView(showsIndicators ? .vertical : [], showsIndicators: showsIndicators) {
            content()
        }
        .accessibilityLabel(accessibilityLabel ?? "ScrollView layout")
    }
}
