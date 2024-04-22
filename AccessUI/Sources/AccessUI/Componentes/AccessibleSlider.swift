import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleSlider: View {
    // Propiedades del control deslizante accesible
    @Binding public var value: Double
    public var range: ClosedRange<Double> = 0.0...1.0
    public var step: Double = 0.0
    public var label: String?
    public var accessibilityLabel: String?
    
    /**
     Inicializa el control deslizante accesible.

     - Parameters:
        - value: El valor del control deslizante vinculado.
        - range: El rango del control deslizante.
        - step: El incremento del control deslizante.
        - label: La etiqueta opcional para mostrar junto al control deslizante.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir el control deslizante.
    */
    public init(value: Binding<Double>, range: ClosedRange<Double> = 0.0...1.0, step: Double = 0.0, label: String? = nil, accessibilityLabel: String? = nil) {
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
        Slider(value: $value, in: range, step: step) {
            // Utiliza NSLocalizedString para obtener el texto de label localizado
            Text(NSLocalizedString(label ?? "", comment: ""))
        }
        // Utiliza NSLocalizedString para obtener la etiqueta de accesibilidad localizada
        .accessibilityLabel(NSLocalizedString((accessibilityLabel ?? label) ?? "", comment: ""))
    }

}
