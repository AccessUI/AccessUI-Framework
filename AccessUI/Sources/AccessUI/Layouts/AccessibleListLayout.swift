import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleListLayout<Item: Identifiable, Content: View>: View {
    // Propiedades de la lista accesible
    public var items: [Item]
    public var rowContent: (Item) -> Content
    public var accessibilityLabel: String?
    
    /**
     Inicializa la lista accesible.

     - Parameters:
        - items: Una lista de elementos a mostrar en la lista.
        - rowContent: Una función que define la vista de fila para cada elemento.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir la lista.
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
                .accessibilityLabel(accessibilityLabel ?? "")
        }
        .accessibilityLabel(accessibilityLabel ?? "List layout")
    }
}
