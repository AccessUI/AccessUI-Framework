import Foundation

@available(iOS 15.0, *)
public struct FormValidator {
    /**
     Valida un campo de texto según una expresión regular.

     - Parameters:
        - text: El texto a validar.
        - regex: La expresión regular para validar el texto.
     
     - Returns: `true` si el texto coincide con la expresión regular, `false` de lo contrario.
    */
    public static func validate(text: String, regex: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: text)
    }
    
    /**
     Valida si un campo de texto no está vacío.

     - Parameter text: El texto a validar.
     
     - Returns: `true` si el texto no está vacío, `false` de lo contrario.
    */
    public static func validateNotEmpty(text: String) -> Bool {
        return !text.isEmpty
    }
}

