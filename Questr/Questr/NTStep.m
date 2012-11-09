//
//  NTStep.m
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import "NTStep.h"
#import "NTUtil.h"

NSArray *__steps = nil;

@implementation NTStep
@synthesize title, pastTitle, successRate;

+(NSArray*)steps
{
    if (!__steps) {
        __steps = @[
        @{  @"title" : @"put on my workout shoes",
            @"pastTitle": @"put on my workout shoes",
            @"successRate": nfloat(0.72)},
        @{  @"title" : @"put on my workout clothing",
            @"pastTitle": @"put on my workout clothing",
            @"successRate": nfloat(0.21)},
        @{  @"title" : @"fill up my water bottle",
            @"pastTitle": @"filled up my water bottle",
            @"successRate": nfloat(0.07)},
        @{  @"title" : @"floss 1 tooth",
            @"pastTitle": @"flossed 1 tooth",
            @"successRate": nfloat(0.69)},
        @{  @"title" : @"cut a thread of floss",
            @"pastTitle": @"cut a thread of floss",
            @"successRate": nfloat(0.18)},
        @{  @"title" : @"imagine myself flossing",
            @"pastTitle": @"imagined myself flossing",
            @"successRate": nfloat(0.13)},
        @{  @"title" : @"read 1 sentence",
            @"pastTitle": @"read 1 sentence",
            @"successRate": nfloat(0.65)},
        @{  @"title" : @"open my book",
            @"pastTitle": @"opened my book",
            @"successRate": nfloat(0.21)},
        @{  @"title" : @"put my book in my lap",
            @"pastTitle": @"put my book in my lap",
            @"successRate": nfloat(0.11)},
        @{  @"title" : @"take 1 sip of water",
            @"pastTitle": @"took 1 sip of water",
            @"successRate": nfloat(0.77)},
        @{  @"title" : @"put water in a glass",
            @"pastTitle": @"put water in a glass",
            @"successRate": nfloat(0.15)},
        @{  @"title" : @"grab a glass of water",
            @"pastTitle": @"grabbed a glass of water",
            @"successRate": nfloat(0.8)},
//        @{  @"title" : @"",
//        @"pastTitle": @"",
//        @"successRate": nfloat()},
        ];
        
        __steps = [__steps mapWith:^id(id object) {
            NTStep *x = [[NTStep alloc] init];
            [x fromJSON:object];
            return x;
        }];
    }
        
    return __steps;
}

@end
