//
//  RCTExampleModule.m
//  test
//
//  Created by Vinicius Libarino on 17/10/24.
//

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(RCTExampleModule, NSObject)
RCT_EXTERN_METHOD(printMessage: (NSString *) title: (CGFloat *) value)
RCT_EXTERN_METHOD(returnMessage: (NSString *) title
                  resolver: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

@end
