import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleSwitch: View {
    // Propiedades del interruptor accesible
    @Binding public var isOn: Bool
    public var label: String?
    public var accessibilityLabel: String?
    
    /**
     Inicializa el interruptor accesible.

     - Parameters:
        - isOn: El estado del interruptor, vinculado a una variable de tipo `Binding<Bool>`.
        - label: La etiqueta opcional para mostrar junto al interruptor.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir el interruptor.
    */
    public init(isOn: Binding<Bool>, label: String? = nil, accessibilityLabel: String? = nil) {
        self._isOn = isOn
        self.label = label
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        // Utiliza NSLocalizedString para obtener la etiqueta de label localizada
        let localizedLabel = NSLocalizedString(label ?? "", comment: "")
        // Utiliza NSLocalizedString para obtener la etiqueta de accesibilidad localizada
        let localizedAccessibilityLabel = NSLocalizedString(accessibilityLabel ?? label ?? "", comment: "")

        return Toggle(localizedLabel, isOn: $isOn)
            .accessibilityLabel(localizedAccessibilityLabel)
    }
}
