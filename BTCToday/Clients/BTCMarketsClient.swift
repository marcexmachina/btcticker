//
//  BTCMarketsClient.swift
//  BTCTicker
//
//  Created by Marc O'Neill on 10/08/2017.
//  Copyright © 2017 marcexmachina. All rights reserved.
//

import Foundation

class BTCMarketsClient {
  
  private let baseURL: String = "https://api.btcmarkets.net/market"
  
  func fetch(forInstrument instrument: String, forCurrency currency: String, completion: @escaping (Stock) -> ()) {
    let queryUrl = URL(string: "\(baseURL)/\(instrument)/\(currency)/tick")
        
    URLSession.shared.dataTask(with:queryUrl!, completionHandler: {(data, response, error) in
      guard let data = data, error == nil else { return }
      
      let stock = StockMapping.objectFromData(data: data)
      completion(stock)
    }).resume()
  }
  
}
