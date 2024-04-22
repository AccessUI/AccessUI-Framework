import UIKit

@available(iOS 15.0, *)
public class VoiceOverHelper {
    /**
     Lee en voz alta un texto utilizando VoiceOver.

     - Parameter text: El texto a leer.
    */
    public static func speak(text: String) {
        UIAccessibility.post(notification: .announcement, argument: text)
    }
}
