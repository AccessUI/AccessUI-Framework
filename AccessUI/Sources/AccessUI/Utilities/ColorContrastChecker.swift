import SwiftUI

@available(iOS 15.0, *)
public struct ColorContrastChecker {
    /**
     Verifica el contraste de color entre dos colores.

     - Parameters:
        - foregroundColor: El color de primer plano.
        - backgroundColor: El color de fondo.
     
     - Returns: `true` si el contraste es suficiente según las pautas de accesibilidad, `false` de lo contrario.
    */
    public static func checkContrast(foregroundColor: Color, backgroundColor: Color) -> Bool {
        let uiForegroundColor = UIColor(foregroundColor)
        let uiBackgroundColor = UIColor(backgroundColor)
        
        let contrastRatio = calculateContrastRatio(foregroundColor: uiForegroundColor, backgroundColor: uiBackgroundColor)
        
        // Las pautas de accesibilidad WCAG requieren un contraste mínimo de 4.5:1
        return contrastRatio >= 4.5
    }
    
    /**
     Calcula la relación de contraste entre dos colores.

     - Parameters:
        - foregroundColor: El color de primer plano.
        - backgroundColor: El color de fondo.
     
     - Returns: La relación de contraste calculada.
    */
    private static func calculateContrastRatio(foregroundColor: UIColor, backgroundColor: UIColor) -> CGFloat {
        let foregroundLuminance = calculateLuminance(color: foregroundColor)
        let backgroundLuminance = calculateLuminance(color: backgroundColor)
        
        let lighter = max(foregroundLuminance, backgroundLuminance)
        let darker = min(foregroundLuminance, backgroundLuminance)
        
        return (lighter + 0.05) / (darker + 0.05)
    }
    
    /**
     Calcula la luminancia de un color.

     - Parameter color: El color para calcular la luminancia.
     
     - Returns: La luminancia del color.
    */
    private static func calculateLuminance(color: UIColor) -> CGFloat {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        // Cálculo de luminancia según la fórmula WCAG
        let r = (red <= 0.03928) ? red / 12.92 : pow((red + 0.055) / 1.055, 2.4)
        let g = (green <= 0.03928) ? green / 12.92 : pow((green + 0.055) / 1.055, 2.4)
        let b = (blue <= 0.03928) ? blue / 12.92 : pow((blue + 0.055) / 1.055, 2.4)
        
        return 0.2126 * r + 0.7152 * g + 0.0722 * b
    }
}
