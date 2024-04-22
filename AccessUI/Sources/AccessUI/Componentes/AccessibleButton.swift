import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleButton: View {
    // Propiedades del botón accesible
    public var title: String
    public var action: () -> Void
    public var accessibilityLabel: String?
    public var isDisabled: Bool = false
    public var tint: Color? = nil
    public var foregroundColor: Color? = nil
    public var font: Font? = nil
    public var padding: EdgeInsets? = nil
    public var cornerRadius: CGFloat? = nil
    public var shadow: Shadow? = nil
    public var background: Color? = nil
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        // Utiliza NSLocalizedString para obtener el título localizado
        let localizedTitle = NSLocalizedString(title, comment: "")
        // Utiliza NSLocalizedString para obtener la etiqueta de accesibilidad localizada
        let localizedAccessibilityLabel = NSLocalizedString(accessibilityLabel ?? title, comment: "")

        // Define las propiedades del texto del botón
        let buttonForegroundColor = foregroundColor
        let buttonFont = font
        let buttonPadding = padding ?? EdgeInsets()
        let buttonCornerRadius = cornerRadius ?? 0
        let buttonShadowColor = shadow?.color ?? Color.clear
        let buttonShadowRadius = shadow?.radius ?? 0
        let buttonShadowX = shadow?.x ?? 0
        let buttonShadowY = shadow?.y ?? 0
        let buttonBackgroundColor = background ?? Color.clear

        // Define el estilo del texto del botón
        let buttonText = Text(localizedTitle)
            .accessibilityLabel(localizedAccessibilityLabel)
            .foregroundColor(buttonForegroundColor)
            .font(buttonFont)
            .padding(buttonPadding)
            .cornerRadius(buttonCornerRadius)
            .shadow(color: buttonShadowColor, radius: buttonShadowRadius, x: buttonShadowX, y: buttonShadowY)
            .background(buttonBackgroundColor)

        // Define y devuelve la vista del botón
        return Button(action: action) {
            buttonText
        }
        .disabled(isDisabled)
        .tint(tint)

    }

    
    /**
     Define un tipo de sombra para la personalización de la vista del botón.
    */
    public struct Shadow {
        var color: Color
        var radius: CGFloat
        var x: CGFloat
        var y: CGFloat
    }
}
