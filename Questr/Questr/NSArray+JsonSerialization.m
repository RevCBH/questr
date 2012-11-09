//
//  NSArray+JsonSerialization.m
//  HabitRx
//
//  Created by Ben Hoffman on 11/09/12.
//  Copyright (c) 2012 Nerd Tribe. All rights reserved.
//

#import "NSArray+JsonSerialization.h"
#import "NTUtil.h"

@implementation NSArray (JsonSerialization)
-(NSArray *)asJSON
{
    return [self mapWith:^id(id object) {
        return [object asJSON];
    }];
}

-(NSData *)toJSON
{
    // TODO - handle errors
    NSError *e = nil;
    return [NSJSONSerialization dataWithJSONObject:[self asJSON] options:0 error:&e];
}

+(NSArray *)fromJSON:(NSData *)json
{
    // TODO - handle errors
    NSError *e = nil;
    return [NSJSONSerialization JSONObjectWithData:json options:0 error:&e];
}

@end
