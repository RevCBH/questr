//
//  NSDictionary+JsonSerialization.m
//  HabitRx
//
//  Created by Ben Hoffman on 11/09/12.
//  Copyright (c) 2012 Nerd Tribe. All rights reserved.
//

#import "NSDictionary+JsonSerialization.h"
#import "NTUtil.h"

@implementation NSDictionary (JsonSerialization)
-(NSData *)toJSON
{
    // TODO - handle errors
    NSError *e = nil;
    return [NSJSONSerialization dataWithJSONObject:self options:0 error:&e];
}

+(NSDictionary *)fromJSON:(NSData *)json
{
    // TODO - handle errors
    NSError *e = nil;
    return [NSJSONSerialization JSONObjectWithData:json options:0 error:&e];
}

-(NSDictionary *)mergeWith:(NSDictionary *)other
{
    NSMutableDictionary *res = MDict(self);
    [res addEntriesFromDictionary:other];
    return res;
}
@end
