# 📱 SwiftUI Component Explorer

A simple, elegant SwiftUI iOS app that allows users to explore and interact with a wide range of built-in SwiftUI components. This project is ideal for developers and learners looking to understand the usage and customization of various SwiftUI views.

DEMO


https://github.com/user-attachments/assets/a4847ed9-6bc3-4a4f-ace5-e17860ff35de



## ✨ Features

- 📋 **List of Components** grouped into categories:
  - **Text Input/Output**: `Text`, `Label`, `TextField`, `SecureField`, `TextArea`, `Image`
  - **Controls**: `Button`, `Menu`, `Link`, `Slider`, `Stepper`, `Toggle`, `Picker`, `DatePicker`, `ColorPicker`, `ProgressView`
  - **Container Views**: `HStack`, `VStack`, `ZStack`, `Form`, `NavigationView`, `Alert`, `Sheet`
  - **List Styles**: `Plain`, `Inset`, `Grouped`, `InsetGrouped`, `Sidebar`
- 🔍 **Search Functionality** to quickly find components
- 📖 **Detailed View** with:
  - SF Symbol icon
  - Description of the component
  - Live interactive demo
  - Link to Apple Developer documentation (opens in Safari)
- 💡 **Modern SwiftUI Techniques**:
  - MVVM Architecture
  - `@StateObject`, `@Published`, and `@Binding` for state management
  - Dynamic filtering
  - Modular and reusable code

## 🖼️ Screenshots

<img width="400" alt="Screenshot 2025-04-24 at 1 35 38 PM" src="https://github.com/user-attachments/assets/8f434554-3f27-4d47-baf4-be326c71d488" />

<img width="400" alt="Screenshot 2025-04-24 at 1 35 42 PM" src="https://github.com/user-attachments/assets/8dc6d35d-28ad-4f1b-96bc-f03a83945061" />

<img width="400" alt="Screenshot 2025-04-24 at 1 36 38 PM" src="https://github.com/user-attachments/assets/f0be95a7-4eee-458f-9525-f3358cfa0cff" />

<img width="400" alt="Screenshot 2025-04-24 at 1 36 48 PM" src="https://github.com/user-attachments/assets/0bbf5f34-7d12-4b85-9a8c-35d0b2b52db6" />

<img width="400" alt="Screenshot 2025-04-24 at 1 36 53 PM" src="https://github.com/user-attachments/assets/748baf36-d361-4aeb-83a4-9d670fc0f86a" />


## 🧱 Built With

- Swift
- SwiftUI
- SF Symbols
- Xcode
- UIKit (for SafariViewController)

## 📁 Project Structure

```
📦 SwiftUIComponentExplorer
├── Models
│   └── Component.swift
├── ViewModels
│   └── ComponentViewModel.swift
├── Views
│   ├── ComponentListView.swift
│   └── ComponentDetailView.swift
└── Assets & Info.plist
```

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/SwiftUIComponentExplorer.git
   ```

2. Open the project in Xcode:
   ```bash
   open SwiftUIComponentExplorer.xcodeproj
   ```

3. Build and run on the iOS Simulator or a physical device.

## ✅ Requirements

- Xcode 15+
- iOS 16.0+
- Swift 5.9+

## 🧠 Learnings

- Deepened understanding of SwiftUI's wide component library
- Practiced MVVM architecture and reactive state management
- Integrated UIKit elements in a SwiftUI app
- Built a responsive, searchable UI using modern Apple frameworks

## 📚 Documentation

Each component includes a button linking directly to the official Apple Developer documentation for in-depth usage.

## 🙌 Acknowledgements

- Apple’s [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui)
- [SF Symbols](https://developer.apple.com/sf-symbols/)
