import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleProgressView: View {
    // Propiedades de la barra de progreso accesible
    public var progress: Double
    public var label: String?
    public var accessibilityLabel: String?
    
    /**
     Inicializa la barra de progreso accesible.

     - Parameters:
        - progress: El valor del progreso (entre 0.0 y 1.0).
        - label: La etiqueta opcional para mostrar junto a la barra de progreso.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir la barra de progreso.
    */
    public init(progress: Double, label: String? = nil, accessibilityLabel: String? = nil) {
        self.progress = progress
        self.label = label
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        if let label = label {
            // Aplica NSLocalizedString a label para obtener la cadena de texto localizada
            ProgressView(NSLocalizedString(label, comment: ""), value: progress, total: 1.0)
                // Aplica NSLocalizedString a accessibilityLabel para obtener la cadena de texto localizada
                .accessibilityLabel(NSLocalizedString(accessibilityLabel ?? label, comment: ""))
        } else {
            ProgressView(value: progress, total: 1.0)
                // Aplica NSLocalizedString a accessibilityLabel para obtener la cadena de texto localizada
                .accessibilityLabel(NSLocalizedString(accessibilityLabel ?? "", comment: ""))
        }
    }
}
