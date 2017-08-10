//
//  Stock.swift
//  BTCTicker
//
//  Created by Marc O'Neill on 10/08/2017.
//  Copyright © 2017 marcexmachina. All rights reserved.
//

import Foundation

enum CoinType: String {
  case ethereum        = "ETH"
  case bitcoin         = "BTC"
  case litecoin        = "LTC"
  case bitcoinCash     = "BCH"
  case ripple          = "XRP"
  case ethereumClassic = "ETC"
  
  static func all() -> [CoinType] {
    return [.bitcoin, .bitcoinCash, .ethereum, .ethereumClassic, .litecoin, .ripple]
  }
}

struct Stock {
  let instrument: String
  let lastPrice: Double
  let bestBid: Double
  let bestAsk: Double
  let currency: String
  let timestamp: TimeInterval
  let volume24h: Double
}
