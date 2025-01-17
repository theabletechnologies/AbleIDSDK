<p align="center">
<img src="https://raw.githubusercontent.com/JasurSalimov/AbleIDSDK/master/images/logo.png" alt="AbleIDSDK" title="AbleIDSDK" width="557"/>
</p>


<p align="center">
<a href="https://cocoapods.org/pods/AbleIDSDK"><img src="https://img.shields.io/github/v/tag/JasurSalimov/AbleIDSDK.svg?color=blue&include_prereleases=&sort=semver"></a>
<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat"></a>
<a href="https://raw.githubusercontent.com/onevcat/AbleIDSDK/LICENSE"><img src="https://img.shields.io/badge/license-MIT-black"></a>
<a href="https://cocoapods.org/pods/AbleIDSDK"><img src="https://img.shields.io/cocoapods/v/AbleIDSDK.svg?style=flat"></a>
<a href="https://cocoapods.org/pods/AbleIDSDK"><img src="https://img.shields.io/cocoapods/p/AbleIDSDK.svg?style=flat"></a>
</p>

Able ID SDK offers robust facial recognition, safeguarding against fraudulent attempts. It employs biometric verification and thwarts presentation attacks, including static images, printed photos, video replays, injections, and masks, ensuring secure and reliable identification.

## Features

- [x] Facial recognition with Active Liveness Detection technology.

### AbleIDSDK 101

#### 1. Import the SDK:
Ensure you've integrated the Able ID SDK into your project. Then, import the necessary module:

```swift
import AbleIDSDK
```

#### 2. Create a Transaction:
Create a Transaction object with a unique attemptId. This ID will help you track the specific liveness check attempt.

```swift
let transaction: Transaction = .init(attemptId: "your_unique_attempt_id")
```
#### 3. Initiate the Liveness Check:
Call the **startLiveness** method on the **AbleID.service** object, passing the current **UIViewController**, the **Transaction** object, and the desired **locale**.

```swift
AbleID.service.startLiveness(from: self, transaction: transaction, locale: .russian) { result in
    switch result {
    case .success(let response):
        // Handle successful liveness check
        print(response)
    case .failure(let error):
        // Handle errors
        print(error)
    }
}
```

#### 4. Handle the Result:
The **startLiveness** method completes asynchronously, returning a **LivenessResult** that indicates whether the liveness check was successful or failed.

```swift
public typealias LivenessResult = Result<AbleIDSDK.AbleIdLivenessResponse, AbleIDSDK.AbleIdLivenessError>
```

### AbleIDSDK - Localization

Able ID SDK supports multiple languages. You can specify the desired language using the **AbleLocale** enum, which includes:

  **.russian**<br/>
  **.english**<br/>
  **.uzbek**<br/>
  **.preferred** (uses the device's preferred language)<br/>

```swift

AbleID.service.startLiveness(from: UIViewController, transaction: Transaction, locale: AbleLocale)

```

### AbleIDSDK - Errors

The Able ID SDK provides an error enumeration named **AbleIdLivenessError**, which includes three distinct cases:

   - **1. userCancellationError**<br/> - Occurs when the user decides to cancel the Liveness Session.
   - **2. ableLivenessProcessingError**<br/> - Indicates an internal error during the Liveness processing phase.
   - **3. ableInstructionsLoadError**<br/> - Signifies an error encountered while loading the necessary instructions.

## Requirements
iOS 13 & Swift 5.0

## Installation

#### Swift Package Manager - coming soon

#### CocoaPods

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '13.0'
use_frameworks!

target 'MyApp' do
  pod 'AbleIDSDK'
end
```

#### Pre-built Framework

1. Open the release page, download the latest version of AbleIDSDK from the assets section. 
2. Drag the `AbleIDSDK.xcframework` into your project and add it to the target (usually the app target).
3. Select your target, in the "General" Tab, find the "Frameworks, Libraries, and Embedded Content" section, set the `Embed Without Signing` to AbleIDSDK.

## Author

Jasur Salimov, jasurtsalimov@gmail.com

## License

AbleIDSDK is available under the MIT license. See the LICENSE file for more info.
