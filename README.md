<img src="https://raw.githubusercontent.com/daisuke-t-jp/JapaneseNumber/master/images/JapaneseNumber.png" width="600"></br>

# JapaneseNumber
![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20macOS%20-blue.svg)
[![Language Swift%205.0](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)](https://developer.apple.com/swift)
[![Build Status](https://travis-ci.org/daisuke-t-jp/JapaneseNumber.svg?branch=master)](https://travis-ci.org/daisuke-t-jp/JapaneseNumber)
[![Cocoapods](https://img.shields.io/cocoapods/v/JapaneseNumber.svg)](https://cocoapods.org/pods/JapaneseNumber)


## Introduction

🇯🇵 The Swift Extension of Japanese Number.  

You can get Japanese style number-strings from **Int** and **UInt** extentions.


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


## Example
```swift
import JapaneseNumber

print(0.japaneseNumber)
// -> "〇"

print(7.japaneseNumber)
// -> "七"

print(12.japaneseNumber)
// -> "十二"

print(502.japaneseNumber)
// -> "五百二"

print(8780.japaneseNumber)
// -> "八千七百八十"

print(2348125.japaneseNumber)
// -> "二百三十四万八千百二十五"

print(804886074634.japaneseNumber)
// -> "八千四十八億八千六百七万四千六百三十四"

print(3320983561368252.japaneseNumber)
// -> "三千三百二十兆九千八百三十五億六千百三十六万八千二百五十二"

print(993377984582390530.japaneseNumber)
// -> "九十九京三千三百七十七兆九千八百四十五億八千二百三十九万五百三十"

```


## Demo
There are demos.

- [iOS](https://github.com/daisuke-t-jp/JapaneseNumber/tree/master/demo/JapaneseNumberDemo-iOS) 
- [macOS](https://github.com/daisuke-t-jp/JapaneseNumber/tree/master/demo/JapaneseNumberDemo-macOS) 

