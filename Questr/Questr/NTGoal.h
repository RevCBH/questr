//
//  NTGoal.h
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NTModel.h"

@interface NTGoal : NTModel

+(NSArray*)goals;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSArray *cues;
@property (nonatomic, strong) NSArray *steps;
@property (nonatomic, strong) NSNumber *numParticipants;

@end
