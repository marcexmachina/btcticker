//
//  ListRowViewController.swift
//  BTCToday
//
//  Created by Marc O'Neill on 10/08/2017.
//  Copyright © 2017 marcexmachina. All rights reserved.
//

import Cocoa

class ListRowViewController: NSViewController {
  
  @IBOutlet weak var instrumentLabel: NSTextField!
  @IBOutlet weak var priceLabel: NSTextField!
  
  var stock: Stock!
  
  override var nibName: String? {
    return "ListRowViewController"
  }

  override func loadView() {
    super.loadView()
    instrumentLabel.stringValue = stock.instrument
    priceLabel.stringValue = "\(stock.lastPrice)"
  }

}
