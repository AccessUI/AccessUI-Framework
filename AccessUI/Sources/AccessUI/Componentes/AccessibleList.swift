import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleList<Item: Identifiable, Content: View>: View {
    // Propiedades de la lista accesible
    public var items: [Item]
    public var rowContent: (Item) -> Content
    public var accessibilityLabel: String?
    
    /**
     Inicializa la lista accesible.

     - Parameters:
        - items: Los elementos a mostrar en la lista.
        - rowContent: La vista que representa cada elemento de la lista.
        - accessibilityLabel: La etiqueta de accesibilidad para la lista (opcional).
    */
    public init(items: [Item], @ViewBuilder rowContent: @escaping (Item) -> Content, accessibilityLabel: String? = nil) {
        self.items = items
        self.rowContent = rowContent
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        List(items) { item in
            rowContent(item)
                // Aplica NSLocalizedString a accessibilityLabel para obtener la cadena de texto localizada
                .accessibilityLabel(NSLocalizedString(accessibilityLabel ?? "", comment: ""))
        }
        // Si deseas añadir una etiqueta de accesibilidad general para la lista,
        // puedes hacer lo siguiente:
        .accessibilityLabel(NSLocalizedString(accessibilityLabel ?? "", comment: ""))
    }
}
