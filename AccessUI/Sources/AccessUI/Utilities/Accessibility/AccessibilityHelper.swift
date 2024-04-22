import UIKit

@available(iOS 15.0, *)
public class AccessibilityHelper {
    /**
     Configura una etiqueta de accesibilidad para una vista.

     - Parameters:
        - view: La vista a configurar.
        - label: La etiqueta de accesibilidad deseada.
    */
    public static func setAccessibilityLabel(for view: UIView, label: String) {
        view.accessibilityLabel = label
    }
    
    /**
     Configura un valor de accesibilidad para una vista.

     - Parameters:
        - view: La vista a configurar.
        - value: El valor de accesibilidad deseado.
    */
    public static func setAccessibilityValue(for view: UIView, value: String) {
        view.accessibilityValue = value
    }
    
    /**
     Configura si una vista es un elemento de accesibilidad.

     - Parameters:
        - view: La vista a configurar.
        - isElement: `true` si la vista debe ser un elemento de accesibilidad, `false` de lo contrario.
    */
    public static func setAccessibilityElement(for view: UIView, isElement: Bool) {
        view.isAccessibilityElement = isElement
    }
}
