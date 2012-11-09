//
//  NTStep.h
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import "NTModel.h"

@interface NTStep : NTModel

+(NSArray*)steps;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *pastTitle;
@property (nonatomic, strong) NSNumber *successRate;

@end
