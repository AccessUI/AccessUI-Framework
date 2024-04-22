import UIKit

@available(iOS 15.0, *)
public class AccessibilityManager {
    
    /**
     Verifica si VoiceOver está habilitado.

     - Returns: `true` si VoiceOver está habilitado, `false` de lo contrario.
    */
    public static func isVoiceOverEnabled() -> Bool {
        return UIAccessibility.isVoiceOverRunning
    }
    
    /**
     Publica una notificación para habilitar o deshabilitar VoiceOver.

     - Parameter enabled: `true` para habilitar VoiceOver, `false` para deshabilitarlo.
    */
    public static func postVoiceOverNotification(enabled: Bool) {
        let notification = enabled ? UIAccessibility.Notification.screenChanged : UIAccessibility.Notification.announcement
        UIAccessibility.post(notification: notification, argument: nil)
    }
}
