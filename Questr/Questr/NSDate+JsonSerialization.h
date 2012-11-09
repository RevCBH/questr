//
//  NSDate+JsonSerialization.h
//  HabitRx
//
//  Created by Ben Hoffman on 11/09/12.
//  Copyright (c) 2012 Nerd Tribe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (JsonSerialization)
-(NSData *)toJSON;
+(NSDictionary *)fromJSON:(NSData *)json;
@end
