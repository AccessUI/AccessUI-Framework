import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleSegmentedControl<SelectionType: Hashable>: View {
    // Propiedades del control segmentado accesible
    @Binding public var selection: SelectionType
    public var options: [SelectionType]
    public var optionLabels: [String]
    public var label: String?
    public var accessibilityLabel: String?
    
    /**
     Inicializa el control segmentado accesible.

     - Parameters:
        - selection: La selección vinculada a los valores del control segmentado.
        - options: Las opciones disponibles en el control segmentado.
        - optionLabels: Las etiquetas de las opciones.
        - label: La etiqueta opcional para mostrar junto al control segmentado.
        - accessibilityLabel: La etiqueta de accesibilidad opcional para describir el control segmentado.
    */
    public init(selection: Binding<SelectionType>, options: [SelectionType], optionLabels: [String], label: String? = nil, accessibilityLabel: String? = nil) {
        self._selection = selection
        self.options = options
        self.optionLabels = optionLabels
        self.label = label
        self.accessibilityLabel = accessibilityLabel
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        Picker(selection: $selection, label: Text(NSLocalizedString(label ?? "", comment: ""))) {
            ForEach(0..<options.count, id: \.self) { index in
                Text(NSLocalizedString(optionLabels[index], comment: ""))
                    .tag(options[index])
                    .accessibilityLabel(NSLocalizedString(accessibilityLabel ?? optionLabels[index], comment: ""))
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}
