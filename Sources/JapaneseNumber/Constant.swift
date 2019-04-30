//
//  Constant.swift
//  JapaneseNumber
//
//  Created by Daisuke T on 2019/04/30.
//  Copyright © 2019 DaisukeT. All rights reserved.
//

import Foundation

class Constant {
  
  enum Number: String, CaseIterable {
    case zero  = "〇"  // 0
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
  
  enum MetricPrefix: String {
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
  
  static func metricPrefixes() -> [Int: String] {
    return [
      1: MetricPrefix.jū.rawValue,
      2: MetricPrefix.hyaku.rawValue,
      3: MetricPrefix.sen.rawValue,
      4: MetricPrefix.man.rawValue,
      8: MetricPrefix.oku.rawValue,
      12: MetricPrefix.chō.rawValue,
      16: MetricPrefix.kei.rawValue,
      20: MetricPrefix.gai.rawValue,
      24: MetricPrefix.shi.rawValue,
      28: MetricPrefix.jou.rawValue,
      32: MetricPrefix.ko.rawValue,
      36: MetricPrefix.kan.rawValue,
      40: MetricPrefix.sei.rawValue,
      44: MetricPrefix.sai.rawValue,
      48: MetricPrefix.goku.rawValue,
      52: MetricPrefix.gōgasha.rawValue,
      56: MetricPrefix.asōgi.rawValue,
      60: MetricPrefix.nayuta.rawValue,
      64: MetricPrefix.fukashigi.rawValue,
      68: MetricPrefix.muryōtaisū.rawValue,
    ]
  }
  
}
