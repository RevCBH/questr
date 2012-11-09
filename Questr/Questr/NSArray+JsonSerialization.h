//
//  NSArray+JsonSerialization.h
//  HabitRx
//
//  Created by Ben Hoffman on 11/09/12.
//  Copyright (c) 2012 Nerd Tribe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (JsonSerialization)
-(NSData *)toJSON;
+(NSArray *)fromJSON:(NSData *)json;
@end
