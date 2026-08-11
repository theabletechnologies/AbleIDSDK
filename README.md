<p align="center">
<img src="https://raw.githubusercontent.com/theabletechnologies/AbleIDSDK/master/images/logo.png" alt="AbleIDSDK" title="AbleIDSDK" width="557"/>
</p>


<p align="center">
<a href="https://github.com/theabletechnologies/AbleIDSDK/releases"><img src="https://img.shields.io/github/v/tag/theabletechnologies/AbleIDSDK.svg?color=blue&include_prereleases=&sort=semver"></a>
<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat"></a>
<a href="https://raw.githubusercontent.com/theabletechnologies/AbleIDSDK/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-black"></a>
<a href="https://developer.apple.com/ios/"><img src="https://img.shields.io/badge/platform-iOS-lightgrey.svg?style=flat"></a>
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
Create a Transaction object with a unique attemptId and livenessEndPoint. The ID will help you track the specific liveness check attempt. The endpoint (URL) for the liveness check API. You might switch this out for a production endpoint or a testing endpoint as necessary.

```swift
let transaction: Transaction = .init(attemptId: "your_unique_attempt_id", baseUrl: "your_liveness_end_point")
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

   - **1. userCancellationError**<br/> - User canceled the liveness process.
   - **2. ableLivenessProcessingError**<br/> - Failed to start Able Liveness.
   - **3. ableInstructionsLoadError**<br/> - Failed to load instructions.
   - **4. ableInitializationError**<br/> - Failed to initialize Able Liveness.
   - **5. ableCompletionRequestError**<br/> - Failed to complete the request.

## Requirements
iOS 13.0+ & Swift 5.5+ (Xcode 13 or later)

## Installation

#### Swift Package Manager

In Xcode, go to **File ▸ Add Package Dependencies…** and enter:

```
https://github.com/theabletechnologies/AbleIDSDK
```

Add the `AbleIDSDK` library product to your app target. The required Regula dependencies (`FaceSDK`, `FaceCoreBasic`) are resolved automatically — do not add them manually.

Or declare it in your own `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/theabletechnologies/AbleIDSDK.git", from: "1.1.5")
]
```

> Note: Xcode may flag the binary framework as an unsigned dependency the first time you resolve the package; accept it to continue.

## Author

Jasur Salimov, jasurtsalimov@gmail.com

## License

AbleIDSDK is available under the MIT license. See the LICENSE file for more info.
