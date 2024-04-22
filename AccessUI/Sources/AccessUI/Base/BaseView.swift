//
//  BaseView.swift
//
//
//  Created by iDesign on 21/04/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public class BaseView: UIView {
    
    /**
     Inicializa la vista base.

     - Parameters:
        - frame: El marco de la vista.
    */
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    /**
     Inicializa la vista base desde un archivo Nib o Storyboard.

     - Parameters:
        - coder: El codificador de la vista.
    */
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    /**
     Configura la vista base.

     Se puede personalizar en las subclases para agregar funcionalidades comunes a las vistas.
    */
    open func setupView() {
        // Configura la vista base
        // Ejemplo: Configura la accesibilidad
        self.isAccessibilityElement = true
        self.accessibilityTraits = .staticText
    }
    
    /**
     Configura el tema de la vista base.

     Se puede personalizar en las subclases para aplicar un tema específico a la vista base.
    */
    open func applyTheme(_ theme: Theme) {
        // Configura el tema de la vista base
        // Ejemplo: Aplica colores y fuentes del tema a la vista
    }
}
