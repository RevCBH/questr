//
//  NTCue.m
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import "NTCue.h"
#import "NTUtil.h"

NSArray *__cues = nil;

@implementation NTCue
@synthesize title, pastTitle, successRate;

+(NSArray*)cues {
    if (!__cues) {
        __cues = @[
        @{  @"title" : @"wake up",
            @"pastTitle": @"woke up",
            @"successRate": nfloat(0.32)},
        @{  @"title" : @"stand up from lunch",
            @"pastTitle": @"stood up from lunch",
            @"successRate": nfloat(0.29)},
        @{  @"title" : @"come home from work / school",
            @"pastTitle": @"came home from work / school",
            @"successRate": nfloat(0.39)},
        @{  @"title" : @"brush teeth",
            @"pastTitle": @"brushed teeth",
            @"successRate": nfloat(0.65)},
        @{  @"title" : @"stand up from dinner",
            @"pastTitle": @"stood up from dinner",
            @"successRate": nfloat(0.14)},
        @{  @"title" : @"get into bed",
            @"pastTitle": @"got into bed",
            @"successRate": nfloat(0.39)},
//        @{  @"title" : @"",
//            @"pastTitle": @"",
//            @"successRate": nfloat()},
//        @{  @"title" : @"",
//            @"pastTitle": @"",
//            @"successRate": nfloat()},
        ];
        
        __cues = [__cues mapWith:^id(id object) {
            NTCue *x = [[NTCue alloc] init];
            [x fromJSON:object];
            return x;
        }];
    }
    
    return __cues;
}

@end
