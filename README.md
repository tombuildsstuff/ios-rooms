# iOS Rooms
An application covering the basics of Swift + iOS 101

## Getting Started

### Dependencies
- OS X Yosemite 10.10.3
- Xcode 6.3+ (App Store)
- node.js / npm
- CocoaPods (sudo gem install cocoapods)

### Node API
```
cd api
npm install
node rooms.js
```

### Swift / Objective-C / Xcode
```
cd ios
pod install
open Rooms.xcworkspace
```

## Background

### Swift
- Basic Swift:
  - Immutable vs Immutable Variables (? vs !)
  - Iterators (for + for each)
  - Map Reduce

- Command Line Tools:
  - REPL
  - Playground
  - XcodeBuild

- Objective-C:
  - Message Sending
  - Nullability (& if let)
  - ARC
  - Return Types (no generics)

- UIKit
  - Basics:
    - UIViewController
    - UINavigationController
    - UITableViewController

  - Interface Builder
    - NIB's
    - Storyboards

### Features to Implement in this Project
- Bridging Header
- Load Rooms from Service
- Display Rooms in a UITableViewController
- Display Room Details
