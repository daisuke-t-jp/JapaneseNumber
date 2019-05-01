//
//  ViewController.swift
//  JapaneseNumberDemo-macOS
//
//  Created by Daisuke T on 2019/04/30.
//  Copyright © 2019 DaisukeT. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    Common.test()
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

