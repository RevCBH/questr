//
//  HCUtil.h
//  HabitRx
//
//  Created by Ben Hoffman on 11/09/12.
//  Copyright (c) 2012 Nerd Tribe. All rights reserved.
//

#import "NSObject+JsonSerialization.h"
#import "NSArray+JsonSerialization.h"
#import "NSDictionary+JsonSerialization.h"
#import "NSDate+JsonSerialization.h"
#import "NSArray+ArrayUtility.h"

#define MDict(x) [NSMutableDictionary dictionaryWithDictionary:x]

#define nint(x) [NSNumber numberWithInt:x]
#define nbig(x) [NSNumber numberWithLong:x];
#define ubig(x) [NSNumber numberWithUnsignedLong:x];
#define nfloat(x) [NSNumber numberWithFloat:x]
#define ndouble(x) [NSNumber numberWithDouble:x]
#define nbool(x) [NSNumber numberWithBool:x]

#define nsprintf(str, ...) ([NSString stringWithFormat:str, __VA_ARGS__])
#define coalesce(a, b) ((a == nil) ? b : a)
#define objNull(x) coalesce(x, NSNull.null)

#define propertyP(selector, value) \
    (^bool(id object) {\
    return [[object performSelector:selector] isEqual:value];})