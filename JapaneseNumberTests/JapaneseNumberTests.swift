//
//  JapaneseNumberTests.swift
//  JapaneseNumberTests
//
//  Created by Daisuke T on 2019/04/27.
//  Copyright © 2019 DaisukeT. All rights reserved.
//

import XCTest
@testable import JapaneseNumber

class JapaneseNumberTests: XCTestCase {
  
  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testOneDigits() {
    XCTAssertEqual(0.japaneseNumber, "零")
    XCTAssertEqual(1.japaneseNumber, "一")
    XCTAssertEqual(2.japaneseNumber, "二")
    XCTAssertEqual(3.japaneseNumber, "三")
    XCTAssertEqual(4.japaneseNumber, "四")
    XCTAssertEqual(5.japaneseNumber, "五")
    XCTAssertEqual(6.japaneseNumber, "六")
    XCTAssertEqual(7.japaneseNumber, "七")
    XCTAssertEqual(8.japaneseNumber, "八")
    XCTAssertEqual(9.japaneseNumber, "九")
  }
  
  func testJū() {
    XCTAssertEqual(10.japaneseNumber, "十")
    XCTAssertEqual(11.japaneseNumber, "十一")
    XCTAssertEqual(12.japaneseNumber, "十二")
    XCTAssertEqual(13.japaneseNumber, "十三")
    XCTAssertEqual(14.japaneseNumber, "十四")
    XCTAssertEqual(15.japaneseNumber, "十五")
    XCTAssertEqual(16.japaneseNumber, "十六")
    XCTAssertEqual(17.japaneseNumber, "十七")
    XCTAssertEqual(18.japaneseNumber, "十八")
    XCTAssertEqual(19.japaneseNumber, "十九")
    XCTAssertEqual(20.japaneseNumber, "二十")
    XCTAssertEqual(21.japaneseNumber, "二十一")
    XCTAssertEqual(22.japaneseNumber, "二十二")
    XCTAssertEqual(23.japaneseNumber, "二十三")
    XCTAssertEqual(24.japaneseNumber, "二十四")
    XCTAssertEqual(25.japaneseNumber, "二十五")
    XCTAssertEqual(26.japaneseNumber, "二十六")
    XCTAssertEqual(27.japaneseNumber, "二十七")
    XCTAssertEqual(28.japaneseNumber, "二十八")
    XCTAssertEqual(29.japaneseNumber, "二十九")
    XCTAssertEqual(99.japaneseNumber, "九十九")
  }
  
  func testHyaku() {
    XCTAssertEqual(100.japaneseNumber, "百")
    XCTAssertEqual(101.japaneseNumber, "百一")
    XCTAssertEqual(110.japaneseNumber, "百十")
    XCTAssertEqual(111.japaneseNumber, "百十一")
    XCTAssertEqual(200.japaneseNumber, "二百")
    XCTAssertEqual(202.japaneseNumber, "二百二")
    XCTAssertEqual(220.japaneseNumber, "二百二十")
    XCTAssertEqual(222.japaneseNumber, "二百二十二")
    XCTAssertEqual(999.japaneseNumber, "九百九十九")
  }
  
  func testSen() {
    XCTAssertEqual(1000.japaneseNumber, "千")
    XCTAssertEqual(1001.japaneseNumber, "千一")
    XCTAssertEqual(1010.japaneseNumber, "千十")
    XCTAssertEqual(1011.japaneseNumber, "千十一")
    XCTAssertEqual(1100.japaneseNumber, "千百")
    XCTAssertEqual(1101.japaneseNumber, "千百一")
    XCTAssertEqual(1111.japaneseNumber, "千百十一")
    XCTAssertEqual(2000.japaneseNumber, "二千")
    XCTAssertEqual(2002.japaneseNumber, "二千二")
    XCTAssertEqual(2020.japaneseNumber, "二千二十")
    XCTAssertEqual(2022.japaneseNumber, "二千二十二")
    XCTAssertEqual(2200.japaneseNumber, "二千二百")
    XCTAssertEqual(2202.japaneseNumber, "二千二百二")
    XCTAssertEqual(2222.japaneseNumber, "二千二百二十二")
    XCTAssertEqual(9999.japaneseNumber, "九千九百九十九")
  }
  
  func testMan() {
    XCTAssertEqual(10000.japaneseNumber, "一万")
    XCTAssertEqual(10001.japaneseNumber, "一万一")
    XCTAssertEqual(10010.japaneseNumber, "一万十")
    XCTAssertEqual(10011.japaneseNumber, "一万十一")
    XCTAssertEqual(10100.japaneseNumber, "一万百")
    XCTAssertEqual(10101.japaneseNumber, "一万百一")
    XCTAssertEqual(10111.japaneseNumber, "一万百十一")
    XCTAssertEqual(11000.japaneseNumber, "一万千")
    XCTAssertEqual(11001.japaneseNumber, "一万千一")
    XCTAssertEqual(11010.japaneseNumber, "一万千十")
    XCTAssertEqual(11011.japaneseNumber, "一万千十一")
    XCTAssertEqual(11100.japaneseNumber, "一万千百")
    XCTAssertEqual(11101.japaneseNumber, "一万千百一")
    XCTAssertEqual(11110.japaneseNumber, "一万千百十")
    XCTAssertEqual(20000.japaneseNumber, "二万")
    XCTAssertEqual(20002.japaneseNumber, "二万二")
    XCTAssertEqual(20020.japaneseNumber, "二万二十")
    XCTAssertEqual(20022.japaneseNumber, "二万二十二")
    XCTAssertEqual(20200.japaneseNumber, "二万二百")
    XCTAssertEqual(20202.japaneseNumber, "二万二百二")
    XCTAssertEqual(20222.japaneseNumber, "二万二百二十二")
    XCTAssertEqual(22000.japaneseNumber, "二万二千")
    XCTAssertEqual(22002.japaneseNumber, "二万二千二")
    XCTAssertEqual(22020.japaneseNumber, "二万二千二十")
    XCTAssertEqual(22022.japaneseNumber, "二万二千二十二")
    XCTAssertEqual(22200.japaneseNumber, "二万二千二百")
    XCTAssertEqual(22202.japaneseNumber, "二万二千二百二")
    XCTAssertEqual(22220.japaneseNumber, "二万二千二百二十")
    XCTAssertEqual(22222.japaneseNumber, "二万二千二百二十二")
    XCTAssertEqual(99999999.japaneseNumber, "九千九百九十九万九千九百九十九")
  }
  
}
