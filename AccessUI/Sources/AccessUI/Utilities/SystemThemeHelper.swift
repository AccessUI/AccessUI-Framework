import UIKit

@available(iOS 15.0, *)
public struct SystemThemeHelper {
    /**
     Verifica si el modo oscuro está habilitado en el sistema.

     - Returns: `true` si el modo oscuro está habilitado, `false` de lo contrario.
    */
    public static func isDarkModeEnabled() -> Bool {
        return UITraitCollection.current.userInterfaceStyle == .dark
    }
}
