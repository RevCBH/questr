//
//  NSArray+ArrayUtility.h
//  ETL-interface-test
//
//  Created by Carll Hoffman on 11/09/12.
//  Copyright (c) 2012 Nerd Tribe. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef bool (^NTPredicate)(id object);
typedef id (^NTMapper)(id object);
typedef id (^NTReducer)(id acc, id object);
typedef void (^NTAction)(id object);

@interface NSArray (ArrayUtility)
- (NSArray *)filterWith:(NTPredicate)filter;
- (id)singleWith:(NTPredicate)filter;
- (NSArray *)mapWith:(NTMapper)mapper;
- (void)eachWith:(NTAction)block;
- (id) reduceFrom:(id)initial with:(NTReducer)block;
@end
