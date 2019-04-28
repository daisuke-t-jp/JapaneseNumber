//
//  JapaneseNumber.swift
//  JapaneseNumber
//
//  Created by Daisuke T on 2019/04/27.
//  Copyright © 2019 DaisukeT. All rights reserved.
//

import Foundation
// TODO: SwiftLint
// TODO: SwiftPM
// TODO: Float
// TODO: UInt
// TODO: travis
// TODO: iOS
// TODO: Linux


// MARK: - Utility
public extension Int {
  
  private var digit: Int {
    var digit = 0
    var tmp = self
    
    while tmp != 0 {
      tmp /= 10
      digit += 1
    }
    
    return digit
  }
  
}


// MARK: - Enum, Const
public extension Int {
  
  enum JapaneseNumber: String, CaseIterable {
    case zero  = "零"  // 0
    case one   = "一"  // 1
    case tow   = "二"  // 2
    case three = "三"  // 3
    case four  = "四"  // 4
    case five  = "五"  // 5
    case six   = "六"  // 6
    case seven = "七"  // 7
    case eight = "八"  // 8
    case nine  = "九"  // 9
  }
  
  
  private static func japaneseMetricPrefixes() -> [Int: String] {
    return [
      1: "十",  // 10^1 Jū
      2: "百",  // 10^2 Hyaku
      3: "千",  // 10^3 Sen
      4: "万",  // 10^4 Man
      8: "億",  // 10^8 Oku
      12: "兆",  // 10^12 Chō
      16: "京",  // 10^16 Kei
      20: "垓",  // 10^20 Gai
      24: "秭",  // 10^24 Shi
      28: "穣",  // 10^28 Jou
      32: "溝",  // 10^32 Ko
      36: "澗",  // 10^36 Kan
      40: "正",  // 10^40 Sei
      44: "載",  // 10^44 Sai
      48: "極",  // 10^48 Goku
      52: "恒河沙",  // 10^52 Gōgasha
      56: "阿僧祇",  // 10^56 Asōgi
      60: "那由他",  // 10^60 Nayuta
      64: "不可思議", // 10^64 Fukashigi
      68: "無量大数", // 10^68 Muryōtaisū
    ]
  }
  
}


public extension Int {
  
  var japaneseNumber: String {
    
    var tmp = self
    var result = ""
    let prefixes = Int.japaneseMetricPrefixes()
    
    while true {
      let digit = tmp.digit
      
      if digit < 2 {
        if result.count == 0 {
          result = JapaneseNumber.allCases[tmp].rawValue
        } else if tmp != 0 {
          result += JapaneseNumber.allCases[tmp].rawValue
        }
        
        break
      }
      
      
      var digit2 = digit
      while true {
        guard let prefix = prefixes[digit2 - 1] else {
          digit2 = digit2 - 1
          continue
        }
        
        let digitNum = tmp / Int(pow(Double(10), Double(digit2 - 1)))
        if digitNum < 2 && digit2 < 5 {
          result += prefix
        } else {
          result += JapaneseNumber.allCases[digitNum].rawValue + prefix
        }
        
        tmp -= digitNum * Int(pow(Double(10), Double(digit2 - 1)))
        break
      }
      
    }
    
    return result
  }
  
}

