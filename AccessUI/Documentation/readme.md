# AccessUI

AccessUI es un framework de SwiftUI que facilita la creación de interfaces de usuario accesibles en aplicaciones iOS y macOS. Proporciona componentes, diseños y utilidades optimizados para la accesibilidad, permitiendo a los desarrolladores construir experiencias de usuario inclusivas.

## Índice

- [Requisitos](#requisitos)
- [Estructura de carpetas](#estructura-de-carpetas)
- [Pruebas](#pruebas)

## Requisitos

- Xcode 14 o superior.
- iOS 16 o superior, o macOS 13 o superior.
- Familiaridad con Swift y SwiftUI.

## Estructura de carpetas

La estructura del proyecto AccessUI se organiza de la siguiente manera:

```plaintext
AccessUI/
┣ 📂 Assets/
┃   ┗ 📂 Images/
┃       └ 🖼️ image1.png
┣ 📂 Documentation/
┃   ┗ 📄 README.md
┣ 📂 Localization/
┃   ┣ 📄 Localizable.strings (es) // Español
┃   ┣ 📄 Localizable.strings (fr) // Francés
┃   ┣ 📄 Localizable.strings (it) // Italiano
┃   ┣ 📄 Localizable.strings (pt) // Portugués
┃   ┣ 📄 Localizable.strings (ro) // Rumano
┃   ┣ 📄 Localizable.strings (ca) // Catalán
┃   ┗ 📄 Localizable.strings (oc) // Occitano
┣ 📂 Sources/
┃   ┣ 📂 Components/
┃   │   ┣ 📂 InputComponents/
┃   │   │   ┣ 📄 AccessibleButton.swift
┃   │   │   ┣ 📄 AccessibleTextField.swift
┃   │   │   ┣ 📄 AccessibleSlider.swift
┃   │   │   ┣ 📄 AccessibleStepper.swift
┃   │   │   ┗ 📄 AccessibleSwitch.swift
┃   │   ┣ 📂 DisplayComponents/
┃   │   │   ┣ 📄 AccessibleLabel.swift
┃   │   │   ┣ 📄 AccessibleImage.swift
┃   │   │   ┗ 📄 AccessibleProgressView.swift
┃   │   ┗ 📄 AccessibleSegmentedControl.swift
┃   ┣ 📂 Layouts/
┃   │   ┣ 📄 AccessibleGridLayout.swift
┃   │   ┣ 📄 AccessibleVStackLayout.swift
┃   │   ┣ 📄 AccessibleHStackLayout.swift
┃   │   ┣ 📄 AccessibleZStackLayout.swift
┃   │   ┣ 📄 AccessibleFormLayout.swift
┃   │   ┣ 📄 AccessibleLazyVGridLayout.swift
┃   │   ┗ 📄 AccessibleLazyHGridLayout.swift
┃   ┣ 📂 Themes/
┃   │   ┣ 📄 DarkTheme.swift
┃   │   ┗ 📄 LightTheme.swift
┃   ┗ 📂 Utilities/
┃       ┣ 📄 AccessibilityHelper.swift
┃       ┗ 📄 VoiceOverHelper.swift
┃       ┗ 📄 ColorContrastChecker.swift
┃       ┗ 📄 FormValidator.swift
┣ 📂 Navigation/
┃   ┣ 📂 Views/
┃   │   ┣ 📄 AccessibleModal.swift
┃   │   ┣ 📄 AccessiblePopUp.swift
┃   │   ┣ 📄 AccessibleTabView.swift
┃   │   ┣ 📄 AccessibleNavigationBar.swift
┃   │   ┗ 📄 AccessibleSideMenu.swift
┃   ┣ 📂 Helpers/
┃   │   ┣ 📄 NavigationController.swift
┃   │   ┣ 📄 NavigationManager.swift
┃   │   ┗ 📄 NavigationRouter.swift
┣ 📂 Tests/
┃   ┣ 📂 UnitTests/
┃   │   ┣ 📂 Components/
┃   │   │   ┣ 📄 AccessibleButtonTests.swift
┃   │   │   ┣ 📄 AccessibleTextFieldTests.swift
┃   │   │   ┗ 📄 AccessibleLabelTests.swift
┃   │   ┣ 📂 LayoutTests/
┃   │   │   ┣ 📄 AccessibleGridLayoutTests.swift
┃   │   │   ┣ 📄 AccessibleVStackLayoutTests.swift
┃   │   │   ┗ 📄 AccessibleHStackLayoutTests.swift
┃   │   ┣ 📂 NavigationTests/
┃   │   │   ┣ 📄 AccessibleModalTests.swift
┃   │   │   ┗ 📄 AccessibleTabViewTests.swift
┃   ┣ 📂 IntegrationTests/
┃   ┗ 📂 PerformanceTests/
┣ 📄 AccessUI.swift           # Archivo principal del framework
┗ 📄 Package.swift            # Archivo de gestión de paquetes
Tests/
┣ 📂 UnitTests/                    # Pruebas unitarias
┃   ┣ 📂 Components/
┃   │   ┣ 📄 AccessibleButtonTests.swift
┃   │   ┣ 📄 AccessibleTextFieldTests.swift
┃   │   ┣ 📄 AccessibleSliderTests.swift
┃   │   ┗ 📄 AccessibleLabelTests.swift
┃   ┣ 📂 Layouts/                 # Pruebas de diseño
┃   │   ┣ 📄 AccessibleVStackLayoutTests.swift
┃   │   ┣ 📄 AccessibleHStackLayoutTests.swift
┃   │   ┗ 📄 AccessibleGridLayoutTests.swift
┃   ┣ 📂 Navigation/              # Pruebas de navegación
┃   │   ┣ 📄 AccessibleModalTests.swift
┃   │   ┣ 📄 AccessibleTabViewTests.swift
┃   │   ┗ 📄 AccessibleNavigationBarTests.swift
┃   ┣ 📂 Utilities/               # Pruebas de utilidades
┃   │   ┣ 📄 AccessibilityHelperTests.swift
┃   │   ┗ 📄 VoiceOverHelperTests.swift
┃   ┗ 📄 TestUtils.swift          # Utilidades y configuraciones comunes para las pruebas
┣ 📂 IntegrationTests/            # Pruebas de integración
┃   ┗ 📄 NavigationIntegrationTests.swift
┣ 📂 PerformanceTests/            # Pruebas de rendimiento
┃   ┗ 📄 PerformanceTestCases.swift
┗ 📄 TestConfiguration.swift      # Configuración global para pruebas (por ejemplo, inyectar dependencias)

## Pruebas
Components: Pruebas unitarias para los componentes de la aplicación, agrupados por tipo (botones, campos de texto, etc.).
Layouts: Pruebas unitarias para los diseños, como VStack, HStack y GridLayout.
Navigation: Pruebas unitarias para los componentes de navegación, como AccessibleModal, TabView, etc.
Utilities: Pruebas unitarias para utilidades comunes, como AccessibilityHelper y VoiceOverHelper.
TestUtils.swift: Archivo que contiene utilidades y configuraciones comunes para todas las pruebas unitarias.
IntegrationTests:
Pruebas de integración que verifican la interacción entre diferentes componentes y funcionalidades de la aplicación.
Por ejemplo, pruebas que cubren el flujo completo de navegación.
PerformanceTests:
Pruebas que evalúan el rendimiento de la aplicación, como el tiempo de carga de los componentes o el uso de memoria.
Puedes organizar estas pruebas según los casos de uso específicos o las partes del proyecto que desees probar.
TestConfiguration.swift:
Archivo de configuración global para las pruebas, donde puedes establecer configuraciones comunes, como la inyección de dependencias o la configuración de entornos de prueba.
Recomendaciones:
Nombres descriptivos: Asegúrate de que los archivos y carpetas tengan nombres descriptivos para indicar claramente qué están probando.
Utiliza utilidades compartidas: Coloca utilidades y configuraciones comunes para todas las pruebas en TestUtils.swift o TestConfiguration.swift.
Organización coherente: Mantén una organización coherente con la estructura de carpetas del proyecto de producción para facilitar la navegación y el mantenimiento.
Separación de responsabilidades: Mantén las pruebas unitarias, de integración y de rendimiento separadas para que puedas abordar diferentes aspectos de la aplicación de manera eficaz.
Estructura modular: Organiza las pruebas de forma modular para que sea fácil agregar nuevas pruebas y mantener las existentes.
Esta estructura de carpetas y archivos para las pruebas te permitirá organizar las pruebas de manera efectiva y coherente, facilitando su mantenimiento y ejecución. Si tienes más preguntas o necesitas ayuda adicional, no dudes en consultarme.
