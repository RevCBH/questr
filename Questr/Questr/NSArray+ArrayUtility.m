//
//  NSArray+ArrayUtility.m
//  interface-test
//

#import "NSArray+ArrayUtility.h"

@implementation NSArray (ArrayUtility)
- (NSArray *)filterWith:(NTPredicate)filter
{
    NSMutableArray *results = [[NSMutableArray alloc] init];
    for (id obj in self) {
        if(filter(obj)) { [results addObject:obj]; }
    }
    
    return results;
}

- (id)singleWith:(NTPredicate)filter
{
    //TODO - break loop early for perf
    return [self filterWith:filter][0];
}

-(NSArray *)mapWith:(NTMapper)mapper
{
    int count = [self count];
    id results[count];
    int i = 0;
    for (id obj in self) {
        results[i++] = mapper(obj);
    }
    
    return [[NSArray alloc] initWithObjects:results count:count];
}

- (void)eachWith:(NTAction)block
{
    for (id obj in self) block(obj);
}

- (id) reduceFrom:(id)initial with:(NTReducer)block
{
    for (id obj in self) {
        initial = block(initial, obj);
    }
    
    return initial;
}
@end
