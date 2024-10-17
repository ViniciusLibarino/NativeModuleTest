//
//  RCTExampleModule.swift
//  test
//
//  Created by Vinicius Libarino on 17/10/24.
//

import Foundation
import React

@objc(RCTExampleModule)
class RCTExampleModule: NSObject {
  
  @objc
  func printMessage(_ title: String, _ value: CGFloat) {
    print("Native message with React Native, my name is \(title), and my age is \(value)")
  }
  
  @objc
  func returnMessage(_ title: String,
                     resolver resolve: @escaping RCTPromiseResolveBlock,
                     rejecter reject: @escaping RCTPromiseRejectBlock) {
    if (title == "My title"){
      resolve("Message processed: \(title)")
    }

  }
}
