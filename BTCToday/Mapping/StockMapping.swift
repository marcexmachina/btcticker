//
//  StockMapping.swift
//  BTCTicker
//
//  Created by Marc O'Neill on 10/08/2017.
//  Copyright © 2017 marcexmachina. All rights reserved.
//

import Foundation

class StockMapping {
  
  static func objectFromData(data: Data) -> Stock {
    let json = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
    let instrument: String = json["instrument"] as! String
    let lastPrice: Double = json["lastPrice"] as! Double
    let bestBid: Double = json["bestBid"] as! Double
    let bestAsk: Double = json["bestAsk"] as! Double
    let currency: String = json["currency"] as! String
    let timestamp: TimeInterval = json["timestamp"] as! TimeInterval
    let volume24h: Double = json["volume24h"] as! Double
      
    return Stock(instrument: instrument,
                 lastPrice: lastPrice,
                 bestBid: bestBid,
                 bestAsk: bestAsk,
                 currency: currency,
                 timestamp: timestamp,
                 volume24h: volume24h)
  }
}
