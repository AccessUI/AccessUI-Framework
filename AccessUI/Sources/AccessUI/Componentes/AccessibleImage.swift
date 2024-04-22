import SwiftUI
import Foundation

@available(iOS 15.0, *)
public struct AccessibleImage: View {
    // Propiedades de la imagen accesible
    public var image: Image
    public var accessibilityLabel: String?
    public var contentMode: ContentMode = .fit
    public var renderingMode: Image.TemplateRenderingMode? = nil
    public var foregroundColor: Color? = nil
    public var frameSize: CGSize? = nil
    public var shadow: Shadow? = nil
    public var shape: AnyShape? = nil
    
    /**
     Define el cuerpo de la vista.
    */
    public var body: some View {
        // Utiliza NSLocalizedString para obtener la etiqueta de accesibilidad localizada
        let localizedAccessibilityLabel = NSLocalizedString(accessibilityLabel ?? "", comment: "")
        
        // Aplica renderingMode a la instancia de Image antes de continuar
        let renderingImage = image.renderingMode(renderingMode)
        
        // Aplica las demás modificaciones a la instancia de Image
        let resizedImage = renderingImage.resizable()
        let aspectRatioImage = resizedImage.aspectRatio(contentMode: contentMode)
        let coloredImage = aspectRatioImage.foregroundColor(foregroundColor)
        
        // Configura el tamaño de la imagen
        let frameImage = coloredImage.frame(width: frameSize?.width, height: frameSize?.height)
        
        // Configura la sombra de la imagen
        let shadowedImage = frameImage.shadow(color: shadow?.color ?? Color.clear, radius: shadow?.radius ?? 0, x: shadow?.x ?? 0, y: shadow?.y ?? 0)
        
        // Configura la forma de la imagen
        let shapedImage = shadowedImage.clipShape(shape ?? AnyShape(Rectangle()))
        
        // Asigna la etiqueta de accesibilidad y devuelve la imagen final
        return shapedImage.accessibilityLabel(localizedAccessibilityLabel)
    }


    
    /**
     Define un tipo de sombra para la personalización de la vista de la imagen.
    */
    public struct Shadow {
        var color: Color
        var radius: CGFloat
        var x: CGFloat
        var y: CGFloat
        
        // Agrega un constructor por defecto para `Shadow`
        public init(color: Color = .black, radius: CGFloat = 0, x: CGFloat = 0, y: CGFloat = 0) {
            self.color = color
            self.radius = radius
            self.x = x
            self.y = y
        }
    }
    
    /**
     Define un tipo que representa una forma genérica para el recorte de la imagen.
    */
    public struct AnyShape: Shape, Sendable {
        private let makePath: @Sendable (CGRect) -> Path

        init<S: Shape>(_ wrapped: S) {
            makePath = { rect in
                wrapped.path(in: rect)
            }
        }

        public func path(in rect: CGRect) -> Path {
            return makePath(rect)
        }
    }



}
