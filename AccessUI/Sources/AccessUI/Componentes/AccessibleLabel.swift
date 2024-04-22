import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleLabel: View {
    // Propiedades de la etiqueta accesible
    public var text: String
    public var accessibilityLabel: String?
    public var font: Font? = nil
    public var foregroundColor: Color? = nil
    public var lineLimit: Int? = nil
    public var textAlignment: TextAlignment = .leading
    public var padding: EdgeInsets? = nil
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        // Utiliza NSLocalizedString para obtener el texto localizado
        Text(NSLocalizedString(text, comment: ""))
            // Utiliza NSLocalizedString para obtener la etiqueta de accesibilidad localizada
            .accessibilityLabel(NSLocalizedString(accessibilityLabel ?? text, comment: ""))
            .font(font)
            .foregroundColor(foregroundColor)
            .lineLimit(lineLimit)
            .multilineTextAlignment(textAlignment)
            .padding(padding ?? EdgeInsets())
    }
}
