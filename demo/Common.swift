//
//  Common.swift
//  JapaneseNumberDemo-macOS
//
//  Created by Daisuke T on 2019/04/30.
//  Copyright © 2019 DaisukeT. All rights reserved.
//

import Foundation
import JapaneseNumber

class Common {
  
  static func test() {
    
    print("0.japaneseNumber -> \"\(0.japaneseNumber)\"")
    print("1.japaneseNumber -> \"\(1.japaneseNumber)\"")
    print("2.japaneseNumber -> \"\(2.japaneseNumber)\"")
    print("3.japaneseNumber -> \"\(3.japaneseNumber)\"")
    print("4.japaneseNumber -> \"\(4.japaneseNumber)\"")
    print("5.japaneseNumber -> \"\(5.japaneseNumber)\"")
    print("6.japaneseNumber -> \"\(6.japaneseNumber)\"")
    print("7.japaneseNumber -> \"\(7.japaneseNumber)\"")
    print("8.japaneseNumber -> \"\(8.japaneseNumber)\"")
    print("9.japaneseNumber -> \"\(9.japaneseNumber)\"")
    print("10.japaneseNumber -> \"\(10.japaneseNumber)\"")
    print("-1.japaneseNumber -> \"\(Int(-1).japaneseNumber)\"")
    print("5035.japaneseNumber -> \"\(5035.japaneseNumber)\"")
    print("21038250.japaneseNumber -> \"\(21038250.japaneseNumber)\"")
    print("325568057586.japaneseNumber -> \"\(325568057586.japaneseNumber)\"")
    print("665061443960367.japaneseNumber -> \"\(665061443960367.japaneseNumber)\"")
    print("10937969797677893734.japaneseNumber -> \"\(UInt(10937969797677893734).japaneseNumber)\"")
  }
  
}
