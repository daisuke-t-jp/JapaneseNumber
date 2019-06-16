<img src="https://raw.githubusercontent.com/daisuke-t-jp/JapaneseNumber/master/images/JapaneseNumber.png" width="600"></br>

# JapaneseNumber
![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20macOS%20%7C%20Linux-blue.svg)
[![Language Swift%205.0](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)](https://developer.apple.com/swift)
[![Build Status](https://travis-ci.org/daisuke-t-jp/JapaneseNumber.svg?branch=master)](https://travis-ci.org/daisuke-t-jp/JapaneseNumber)
[![CocoaPods](https://img.shields.io/cocoapods/v/JapaneseNumber.svg)](https://cocoapods.org/pods/JapaneseNumber)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-green.svg)](https://github.com/Carthage/Carthage)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-green.svg)](https://github.com/apple/swift-package-manager)


## Introduction

🇯🇵 The Swift Extension of Japanese Number.  *(e.g. 123,456,789 -> "一億二千三百四十五万六千七百八十九")*

You can get Japanese style number-strings from [Int](https://developer.apple.com/documentation/swift/int) and [UInt](https://developer.apple.com/documentation/swift/UInt) extentions.


## Requirements
- Platforms
  - iOS 10.0+
  - macOS 10.12+
  - Linux
- Swift 5.0


## Installation
### CocoaPods
```
use_frameworks!

target 'target' do
pod 'JapaneseNumber'
end
```

## Carthage
`github "daisuke-t-jp/JapaneseNumber"`

## Swift Package Manager
```swift
import PackageDescription

let package = Package(
  name: "YOUR_PACKAGE_NAME",
  dependencies: [
    .package(url: "https://github.com/daisuke-t-jp/JapaneseNumber.git", from: "1.0.0")
  ],
  targets: [
    .target(
      name: "YOUR_TARGET_NAME",
      dependencies: ["JapaneseNumber"]),
  ]
)
```


## Example
```swift
import JapaneseNumber

print("0.japaneseNumber -> \"\(0.japaneseNumber)\"")
// 0.japaneseNumber -> "〇"

print("1.japaneseNumber -> \"\(1.japaneseNumber)\"")
// 1.japaneseNumber -> "一"

print("2.japaneseNumber -> \"\(2.japaneseNumber)\"")
// 2.japaneseNumber -> "二"

print("3.japaneseNumber -> \"\(3.japaneseNumber)\"")
// 3.japaneseNumber -> "三"

print("4.japaneseNumber -> \"\(4.japaneseNumber)\"")
// 4.japaneseNumber -> "四"

print("5.japaneseNumber -> \"\(5.japaneseNumber)\"")
// 5.japaneseNumber -> "五"

print("6.japaneseNumber -> \"\(6.japaneseNumber)\"")
// 6.japaneseNumber -> "六"

print("7.japaneseNumber -> \"\(7.japaneseNumber)\"")
// 7.japaneseNumber -> "七"

print("8.japaneseNumber -> \"\(8.japaneseNumber)\"")
// 8.japaneseNumber -> "八"

print("9.japaneseNumber -> \"\(9.japaneseNumber)\"")
// 9.japaneseNumber -> "九"

print("10.japaneseNumber -> \"\(10.japaneseNumber)\"")
// 10.japaneseNumber -> "十"

print("-1.japaneseNumber -> \"\(Int(-1).japaneseNumber)\"")
// -1.japaneseNumber -> "一"

print("5035.japaneseNumber -> \"\(5035.japaneseNumber)\"")
// 5035.japaneseNumber -> "五千三十五"

print("21038250.japaneseNumber -> \"\(21038250.japaneseNumber)\"")
// 21038250.japaneseNumber -> "二千百三万八千二百五十"

print("325568057586.japaneseNumber -> \"\(325568057586.japaneseNumber)\"")
// 325568057586.japaneseNumber -> "三千二百五十五億六千八百五万七千五百八十六"

print("665061443960367.japaneseNumber -> \"\(665061443960367.japaneseNumber)\"")
// 665061443960367.japaneseNumber -> "六百六十五兆六百十四億四千三百九十六万三百六十七"

print("10937969797677893734.japaneseNumber -> \"\(UInt(10937969797677893734).japaneseNumber)\"")
// 10937969797677893734.japaneseNumber -> "千九十三京七千九百六十九兆七千九百七十六億七千七百八十九万三千七百三十四"

```


## Demo
There are demos.

- [iOS](https://github.com/daisuke-t-jp/JapaneseNumber/tree/master/demo/JapaneseNumberDemo-iOS) 
- [macOS](https://github.com/daisuke-t-jp/JapaneseNumber/tree/master/demo/JapaneseNumberDemo-macOS) 

