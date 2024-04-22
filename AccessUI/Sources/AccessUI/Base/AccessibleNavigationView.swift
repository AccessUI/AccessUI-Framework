//
//  AccessibleNavigationView.swift
//
//
//  Created by iDesign on 21/04/2024.
//

import UIKit

@available(iOS 15.0, *)
public class AccessibleNavigationView: UINavigationController {
    
    /**
     Inicializa la vista de navegación accesible.

     - Parameters:
        - rootViewController: El controlador de vista raíz.
    */
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        setupNavigation()
    }
    
    /**
     Inicializa la vista de navegación accesible desde un archivo Nib o Storyboard.

     - Parameters:
        - coder: El codificador de la vista.
    */
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupNavigation()
    }
    
    /**
     Configura la vista de navegación accesible.

     Establece configuraciones comunes relacionadas con la accesibilidad.
    */
    private func setupNavigation() {
        // Configura la navegación accesible
        self.navigationBar.isAccessibilityElement = true
        self.navigationBar.accessibilityTraits = .header
    }
    
    /**
     Configura el tema de la vista de navegación accesible.

     - Parameter theme: El tema a aplicar.
    */
    public func applyTheme(_ theme: Theme) {
        // Aplica el tema a la barra de navegación
        self.navigationBar.barTintColor = theme.primaryColor.toUIColor()
        self.navigationBar.tintColor = theme.accentColor.toUIColor()
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: theme.textColor.toUIColor()]
    }
}
