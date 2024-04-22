import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleStepper: View {
    // Propiedades del control de paso accesible
    @Binding public var value: Double
    public var range: ClosedRange<Double> = 0.0...1.0
    public var step: Double = 1.0
    public var label: String?
    public var accessibilityLabel: String?
    
    /**
     Inicializa el control de paso accesible.

     - Parameters:
        - value: El valor del control de paso vinculado.
        - range: El rango del control de paso.
        - step: El incremento del control de paso.
        - label: La etiqueta opcional para mostrar junto al control de paso.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir el control de paso.
    */
    public init(value: Binding<Double>, range: ClosedRange<Double> = 0.0...1.0, step: Double = 1.0, label: String? = nil, accessibilityLabel: String? = nil) {
        self._value = value
        self.range = range
        self.step = step
        self.label = label
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        let localizedLabel = NSLocalizedString(label ?? "", comment: "")
        let defaultAccessibilityLabel = NSLocalizedString("default_stepper_accessibility_label", comment: "")
        
        // Utiliza NSLocalizedString para obtener la etiqueta de label localizada
        return Stepper(
            localizedLabel,
            value: $value,
            in: range,
            step: step
        )
        // Utiliza NSLocalizedString para obtener la etiqueta de accesibilidad localizada
        .accessibilityLabel(
            NSLocalizedString(
                accessibilityLabel ?? label ?? defaultAccessibilityLabel,
                comment: ""
            )
        )
    }

}

