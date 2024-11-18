# 🔔 IOS Alert View

A simple and elegant **Alert View** built with **SwiftUI** which can be used in any iOS project.

## 🛠 Technologies

- **SwiftUI**: The declarative UI framework from Apple.

## 🚀 Getting Started

### Prerequisites
- **Xcode 14** and later
- iOS  14 or later

### Installation
1. On your iOS project fo to File -> Add Package Dependencies and search for below repo:
   ```bash
   https://github.com/nathMonisankar/ios-alert-view.git
   ```
2. Add the package and then import and start using it.

## General Usage

1. Add the **AlertView()** in the main swift file

```swift
@main
struct IosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .overlay(AlertView())
        }
    }
}
```

2. Now use the methods **showGlobalAlert** and **dismissGlobalAlert** anywhere in your project

```swift
showGlobalAlert(
    title: "Alert Title",
    message: "Alert Message",
    primaryButtonTitle: "Done",
    secondaryButtonTitle: "Cancel",
    primaryAction: {dismissGlobalAlert()},
    secondaryAction: {dismissGlobalAlert()}
)
```

