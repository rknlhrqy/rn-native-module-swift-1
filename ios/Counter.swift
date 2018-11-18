//
//  Counter.swift
//  rn_native_module_swift_1
//
//  Created by Kening Ren on 11/17/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

@objc(Counter)
class Counter: RCTEventEmitter {
  private var count = 0
  
  @objc
  func increment() {
    count += 1
    print("count is \(count)")
    sendEvent(withName: "onIncrement", body: ["count": count])
  }
  
  override func supportedEvents() -> [String]! {
    return ["onIncrement"]
  }
  
  override func constantsToExport() -> [AnyHashable: Any]! {
    return ["initialCount" : 0]
  }
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([
      count,
      123.9,
      "third argument",
      [1, 2.2, "3"],
      ["a": 1, "b": 2]
      
    ])
  }
  
  @objc
  func decrement(_ resolve: RCTPromiseResolveBlock,
                 rejecter reject: RCTPromiseRejectBlock) -> Void {
    if (count == 0) {
      let error = NSError(domain: "", code: 200, userInfo: nil)
      reject("E_COUNT", "count cannot be negative", error)
    } else {
      count -= 1
      resolve("count was decremented")
    }
  }
}

