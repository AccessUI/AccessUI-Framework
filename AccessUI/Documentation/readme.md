# AccessUI

**AccessUI** es un framework de SwiftUI que facilita la creación de interfaces de usuario accesibles en aplicaciones iOS y macOS. Proporciona componentes, diseños y utilidades optimizados para la accesibilidad, permitiendo a los desarrolladores construir experiencias de usuario inclusivas.

## 🛠 Estructuración de carpetas

Para organizar el código y los recursos del proyecto, sigue esta estructura de carpetas:

```plaintext
AccessUI/
┣ 📂 Assets/
┃   ┗ 📂 Images/
┃       ┗ 🖼️ image1.png
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
┃   ┃   ┣ 📄 AccessibleButton.swift
┃   ┃   ┣ 📄 AccessibleTextField.swift
┃   ┃   ┣ 📄 AccessibleLabel.swift
┃   ┃   ┗ 📄 AccessibleList.swift
┃   ┃   ┣ 📄 AccessibleImage.swift
┃   ┃   ┣ 📄 AccessibleSlider.swift
┃   ┃   ┣ 📄 AccessibleStepper.swift
┃   ┃   ┣ 📄 AccessibleSwitch.swift
┃   ┃   ┣ 📄 AccessibleProgressView.swift
┃   ┃   ┗ 📄 AccessibleSegmentedControl.swift
┃   ┣ 📂 Layouts/
┃   ┃   ┣ 📄 AccessibleGridLayout.swift
┃   ┃   ┣ 📄 AccessibleVStackLayout.swift
┃   ┃   ┣ 📄 AccessibleHStackLayout.swift
┃   ┃   ┣ 📄 AccessibleZStackLayout.swift
┃   ┃   ┣ 📄 AccessibleFormLayout.swift
┃   ┃   ┣ 📄 AccessibleLazyVGridLayout.swift
┃   ┃   ┗ 📄 AccessibleLazyHGridLayout.swift
┃   ┃   ┣ 📄 AccessibleListLayout.swift
┃   ┃   ┗ 📄 AccessibleScrollViewLayout.swift
┃   ┣ 📂 Themes/
┃   ┃   ┣ 📄 DarkTheme.swift
┃   ┃   ┗ 📄 LightTheme.swift
┃   ┃   ┣ 📄 HighContrastTheme.swift
┃   ┃   ┗ 📄 AccessibleFontTheme.swift
┃   ┣ 📂 Base/
┃   ┃   ┣ 📄 BaseView.swift
┃   ┃   ┗ 📄 AccessibleNavigationView.swift
┃   ┣ 📂 Utilities/
┃   ┃   ┣ 📄 FormValidator.swift
┃   ┃   ┗ 📂 Accessibility/
┃   ┃       ┣ 📄 AccessibilityHelper.swift
┃   ┃       ┗ 📄 AccessibilityManager.swift
┃   ┃   ┣ 📄 VoiceOverHelper.swift
┃   ┃   ┗ 📄 ColorContrastChecker.swift
┣ 📂 Navigation/
┃   ┃   ┣ 📄 AccessibleModal.swift
┃   ┃   ┣ 📄 AccessiblePopUp.swift
┃   ┃   ┣ 📄 AccessibleTabView.swift
┃   ┃   ┣ 📄 AccessibleNavigationBar.swift
┃   ┃   ┣ 📄 AccessibleSplitView.swift
┃   ┃   ┣ 📄 AccessibleSideMenu.swift
┃   ┃   ┣ 📄 AccessiblePageView.swift
┃   ┗ 📂 NavigationHelper/
┃       ┣ 📄 NavigationController.swift
┃       ┣ 📄 NavigationManager.swift
┃       ┗ 📄 NavigationRouter.swift
┣ 📂 Tests/
┃   ┣ 📂 UnitTests/
┃   ┃   ┣ 📂 ComponentTests/
┃   ┃   ┃   ┣ 📄 AccessibleButtonTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleTextFieldTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleLabelTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleListTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleImageTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleSliderTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleStepperTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleSwitchTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleProgressViewTests.swift
┃   ┃   ┃   ┗ 📄 AccessibleSegmentedControlTests.swift
┃   ┃   ┣ 📂 LayoutsTests/
┃   ┃   ┃   ┣ 📄 AccessibleGridLayoutTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleVStackLayoutTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleHStackLayoutTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleZStackLayoutTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleFormLayoutTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleLazyVGridLayoutTests.swift
┃   ┃   ┃   ┗ 📄 AccessibleLazyHGridLayoutTests.swift
┃   ┃   ┣ 📂 NavigationTests/
┃   ┃   ┃   ┣ 📄 AccessibleModalTests.swift
┃   ┃   ┃   ┣ 📄 AccessiblePopUpTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleTabViewTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleNavigationBarTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleSplitViewTests.swift
┃   ┃   ┃   ┣ 📄 AccessibleSideMenuTests.swift
┃   ┃   ┃   ┣ 📄 AccessiblePageViewTests.swift
┃   ┃   ┃   ┗ 📄 AccessibleToolbarTests.swift
┃   ┣ 📂 IntegrationTests/
┃   ┃   ┗ 📄 NavigationIntegrationTests.swift
┃   ┣ 📂 AccessibilityTests/
┃   ┃   ┗ 📄 GeneralAccessibilityTests.swift
┃   ┣ 📂 UITests/
┃   ┃   ┗ 📄 UserInterfaceTests.swift
┃   ┗ 📂 PerformanceTests/
┃       ┣ 📄 PerformanceTestCases.swift

┣ 📄 Package.swift
┣ 📄 AccessUI.swift


🧰 Descripción de carpetas
Assets/: Contiene recursos como imágenes y otros activos del proyecto.
Documentation/: Almacena la documentación del proyecto, incluido este archivo README.md.
Sources/: Contiene el código fuente de AccessUI.
Components/: Almacena los componentes del framework, como botones, campos de texto, etiquetas, y listas accesibles.
Layouts/: Incluye diseños accesibles como grid layouts y stack layouts verticales.
Themes/: Contiene temas de diseño, como DarkTheme y LightTheme.
Base/: Incluye vistas base y navegación accesible.
Utilities/: Contiene utilidades y herramientas para la accesibilidad.
Accessibility/: Subcarpeta para herramientas de accesibilidad.
Tests/: Contiene pruebas unitarias e integrales para verificar la funcionalidad del framework.
ComponentTests/: Pruebas para los componentes.
UtilitiesTests/: Pruebas para las utilidades.
Package.swift: Archivo de configuración para Swift Package Manager.
AccessUI.swift: Archivo principal del framework.
🏗️ Desarrollo
Configura el entorno: Instala Xcode y asegúrate de tener Swift Package Manager.
Clona el proyecto: Clona el repositorio para empezar a trabajar con AccessUI.
Escribe código: Implementa tus componentes, diseños, temas, y utilidades siguiendo la estructura de carpetas.
Escribe pruebas: Crea pruebas para tus componentes y utilidades en la carpeta Tests.
Documenta tu código: Asegúrate de agregar comentarios y documentación clara a tus archivos.
Realiza pruebas: Ejecuta tus pruebas para asegurar la calidad y funcionalidad de tu código.
Contribuye: Sigue las pautas de contribución si deseas contribuir al proyecto.


Este `README.md` proporciona una guía clara para los desarrolladores sobre cómo organizar el código y comenzar a trabajar con **AccessUI**. Puedes personalizarlo según las necesidades y objetivos específicos de tu proyecto.
