<p align="center">
<img src="https://raw.githubusercontent.com/JasurSalimov/AbleIDSDK/images/logo.png" alt="AbleIDSDK" title="AbleIDSDK" width="557"/>
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

### Kingfisher 101

1. The simplest use-case is creating Transaction structure with transaction id. 
2. Then callin startLiveness method through service sharing your presented UIViewController to the sdk with transaction and your preffered locale.

```swift
import AbleIDSDK

let transaction: Transaction = .init(id: transactionId)
AbleID.service.startLiveness(from: self, transaction: transaction, locale: .russian) { result in       
     debugPrint("Liveness is finished and the result is: ", result)
}
```
3. Then in the end all sdk controllers will close and complete with the following result in closure. 

public typealias LivenessResult = Result<AbleIDSDK.AbleIdLivenessResponse, AbleIDSDK.AbleIdLivenessError>

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

1. Open the release page, download the latest version of Kingfisher from the assets section. 
2. Drag the `Kingfisher.xcframework` into your project and add it to the target (usually the app target).
3. Select your target, in the "General" Tab, find the "Frameworks, Libraries, and Embedded Content" section, set the `Embed Without Signing` to Kingfisher.

## Author

Jasur Salimov, jasurtsalimov@gmail.com

## License

AbleIDSDK is available under the MIT license. See the LICENSE file for more info.
