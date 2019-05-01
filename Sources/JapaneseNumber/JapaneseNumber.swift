//
//  JapaneseNumber.swift
//  JapaneseNumber
//
//  Created by Daisuke T on 2019/04/30.
//  Copyright © 2019 DaisukeT. All rights reserved.
//

import Foundation

/// Japanese Number Protocol
public protocol JapaneseNumber {
  
  var japaneseNumber: String { get }
  
}


/// Japanese Number Extension
extension JapaneseNumber where Self: BinaryInteger {
  
  var digit: Int {
    var digit = 0
    var val = self
    
    while val != 0 {
      val /= 10
      digit += 1
    }
    
    return digit
  }
  
}


public extension JapaneseNumber where Self: SignedInteger {
  
  var japaneseNumber: String {
    
    var val = self
    if val < 0 {
      val *= -1
    }
    
    return UInt(val).japaneseNumber
    
  }
  
}


public extension JapaneseNumber where Self: UnsignedInteger {

  var japaneseNumber: String {
    
    var val = self
    var result = ""
    let prefixes = Constant.metricPrefixes()
    
    while true {
      let digit = val.digit
      
      if digit < 2 {
        if result.count == 0 {
          result = Constant.Number.allCases[Int(val)].rawValue
        } else if val != 0 {
          result += Constant.Number.allCases[Int(val)].rawValue
        }
        
        break
      }
      
      
      var digit2 = digit
      while true {
        guard let prefix = prefixes[digit2 - 1] else {
          digit2 -= 1
          continue
        }
        
        let digitNum = Self(val) / Self(pow(Double(10), Double(digit2 - 1)))
        if digitNum < 2 && digit2 < 5 {
          result += prefix
        } else {
          if digitNum > 9 {
            result += digitNum.japaneseNumber + prefix
          } else {
            result += Constant.Number.allCases[Int(digitNum)].rawValue + prefix
          }
        }
        
        val -= Self(digitNum * Self(pow(Double(10), Double(digit2 - 1))))
        break
      }
      
    }
    
    return result
  }
  
}
