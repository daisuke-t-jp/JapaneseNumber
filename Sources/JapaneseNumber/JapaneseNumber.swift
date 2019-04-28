//
//  JapaneseNumber.swift
//  JapaneseNumber
//
//  Created by Daisuke T on 2019/04/27.
//  Copyright © 2019 DaisukeT. All rights reserved.
//

import Foundation

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
  
  enum JapaneseMetricPrefix: String {
    case jū = "十"     // 10^1 Jū
    case hyaku = "百"  // 10^2 Hyaku
    case sen = "千"    // 10^3 Sen
    case man = "万"    // 10^4 Man
    case oku = "億"    // 10^8 Oku
    case chō = "兆"    // 10^12 Chō
    case kei = "京"    // 10^16 Kei
    case gai = "垓"    // 10^20 Gai
    case shi = "秭"    // 10^24 Shi
    case jou = "穣"    // 10^28 Jou
    case ko = "溝"     // 10^32 Ko
    case kan = "澗"    // 10^36 Kan
    case sei = "正"    // 10^40 Sei
    case sai = "載"    // 10^44 Sai
    case goku = "極"   // 10^48 Goku
    case gōgasha = "恒河沙"  // 10^52 Gōgasha
    case asōgi = "阿僧祇"    // 10^56 Asōgi
    case nayuta = "那由他"   // 10^60 Nayuta
    case fukashigi = "不可思議"   // 10^64 Fukashigi
    case muryōtaisū = "無量大数"  // 10^68 Muryōtaisū
  }
  
  private static func japaneseMetricPrefixes() -> [Int: String] {
    return [
      1: JapaneseMetricPrefix.jū.rawValue,
      2: JapaneseMetricPrefix.hyaku.rawValue,
      3: JapaneseMetricPrefix.sen.rawValue,
      4: JapaneseMetricPrefix.man.rawValue,
      8: JapaneseMetricPrefix.oku.rawValue,
      12: JapaneseMetricPrefix.chō.rawValue,
      16: JapaneseMetricPrefix.kei.rawValue,
      20: JapaneseMetricPrefix.gai.rawValue,
      24: JapaneseMetricPrefix.shi.rawValue,
      28: JapaneseMetricPrefix.jou.rawValue,
      32: JapaneseMetricPrefix.ko.rawValue,
      36: JapaneseMetricPrefix.kan.rawValue,
      40: JapaneseMetricPrefix.sei.rawValue,
      44: JapaneseMetricPrefix.sai.rawValue,
      48: JapaneseMetricPrefix.goku.rawValue,
      52: JapaneseMetricPrefix.gōgasha.rawValue,
      56: JapaneseMetricPrefix.asōgi.rawValue,
      60: JapaneseMetricPrefix.nayuta.rawValue,
      64: JapaneseMetricPrefix.fukashigi.rawValue,
      68: JapaneseMetricPrefix.muryōtaisū.rawValue,
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
          if digitNum > 9 {
            result += digitNum.japaneseNumber + prefix
          }
          else {
            result += JapaneseNumber.allCases[digitNum].rawValue + prefix
          }
        }
        
        tmp -= digitNum * Int(pow(Double(10), Double(digit2 - 1)))
        break
      }
      
    }
    
    return result
  }
  
}

