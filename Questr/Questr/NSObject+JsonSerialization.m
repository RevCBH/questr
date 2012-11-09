//
//  NSObject+JsonSerialization.m
//  HabitRx
//
//  Created by Ben Hoffman on 11/09/12.
//  Copyright (c) 2012 Nerd Tribe. All rights reserved.
//

#import "NSObject+JsonSerialization.h"
#import "NSDictionary+JsonSerialization.h"

@implementation NSObject (JsonSerialization)
-(void)fromJSON:(id)json {
    NSDictionary *dict;
    if ([json isKindOfClass:NSData.class]) {
        dict = [NSDictionary fromJSON:json];
    }
    else {
        dict = json;
    }
    
    if ((__bridge void *)dict == (__bridge void *)NSNull.null) {
        NSLog(@"dict is null!");
    }
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        @try {
            if ([key isEqualToString:@"_id"]) obj = [obj description];
            [self setValue:obj forKey:key];
        }
        @catch (NSException *exception) {}
    }];
}
@end
