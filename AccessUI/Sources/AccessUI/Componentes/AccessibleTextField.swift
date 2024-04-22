import SwiftUI

@available(iOS 15.0, *)
public struct AccessibleTextField: View {
    // Propiedades del campo de texto accesible
    @Binding public var text: String
    public var label: String?
    public var placeholder: String?
    public var accessibilityLabel: String?
    public var foregroundColor: Color?
    public var font: Font?
    public var keyboardType: UIKeyboardType = .default
    
    /**
     Inicializa el campo de texto accesible.

     - Parameters:
        - text: El texto del campo de texto, vinculado a una variable de tipo `Binding<String>`.
        - label: La etiqueta opcional para mostrar junto al campo de texto.
        - placeholder: Un texto de marcador de posición opcional para mostrar dentro del campo de texto.
        - accessibilityLabel: Una etiqueta de accesibilidad opcional para describir el campo de texto.
        - foregroundColor: El color opcional de primer plano para el texto.
        - font: La fuente opcional para el texto.
        - keyboardType: El tipo de teclado a mostrar.
    */
    public init(text: Binding<String>, label: String? = nil, placeholder: String? = nil, accessibilityLabel: String? = nil, foregroundColor: Color? = nil, font: Font? = nil, keyboardType: UIKeyboardType = .default) {
        self._text = text
        self.label = label
        self.placeholder = placeholder
        self.accessibilityLabel = accessibilityLabel
        self.foregroundColor = foregroundColor
        self.font = font
        self.keyboardType = keyboardType
    }
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        VStack(alignment: .leading) {
            if let label = label {
                Text(label)
            }
            TextField(placeholder ?? "", text: $text)
                .accessibilityLabel(accessibilityLabel ?? placeholder ?? "")
                .foregroundColor(foregroundColor)
                .font(font)
                .keyboardType(keyboardType)
        }
    }
}
