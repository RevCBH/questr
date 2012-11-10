//
//  NTGoal.m
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import "NTGoal.h"
#import "NTCue.h"
#import "NTStep.h"
#import "NTUtil.h"

NSArray *__goals = nil;

@implementation NTGoal
@synthesize title, description, cues, steps;

NTPredicate titleP(NSString *title) {
    return propertyP(@selector(title), title);
}

+(NSArray*)goals
{
    if (!__goals) {
        NSArray *cues = NTCue.cues, *steps = NTStep.steps;
        __goals = @[
        @{  @"title":       @"Exercise",
            @"description": @"Workout to build strength and muscle",
            @"numParticipants": nint(500),
            @"cues": [@[
                      @"wake up",
                      @"stand up from lunch",
                      @"come home from work / school"
            ] mapWith:^id(id title) {return [cues singleWith:titleP(title)];}],
            @"steps": [@[
                       @"put on my workout shoes",
                       @"put on my workout clothing",
                       @"fill up my water bottle"
            ] mapWith:^id(id title) {return [steps singleWith:titleP(title)];}],
        },
        @{  @"title":       @"Floss",
            @"description": @"Keep those chompers shiny",
            @"numParticipants": nint(500),        
            @"cues": [@[
                      @"brush teeth",
                      @"stand up from lunch",
                      @"stand up from dinner"
            ] mapWith:^id(id title) {return [cues singleWith:titleP(title)];}],
            @"steps": [@[
                       @"floss 1 tooth",
                       @"cut a thread of floss",
                       @"imagine myself flossing"
            ] mapWith:^id(id title) {return [steps singleWith:titleP(title)];}],
        },
        @{  @"title":       @"Read",
            @"description": @"Become smarter and more interesting",
            @"numParticipants": nint(500),        
            @"cues": [@[
                      @"get into bed",
                      @"stand up from dinner",
                      @"come home from work / school"
            ] mapWith:^id(id title) {return [cues singleWith:titleP(title)];}],
            @"steps": [@[
                       @"read 1 sentence",
                       @"open my book",
                       @"put my book in my lap"
            ] mapWith:^id(id title) {return [steps singleWith:titleP(title)];}],
        },
        @{  @"title":       @"Run",
            @"description": @"Go faster for longer",
            @"numParticipants": nint(500),        
            @"cues": [@[
                      @"wake up",
                      @"stand up from lunch",
                      @"come home from work / school"
            ] mapWith:^id(id title) {return [cues singleWith:titleP(title)];}],
            @"steps": [@[
                       @"put on my workout shoes",
                       @"put on my workout clothing",
                       @"fill up my water bottle"
            ] mapWith:^id(id title) {return [steps singleWith:titleP(title)];}],
        },
        @{  @"title":       @"Drink more water",
            @"description": @"Stay hydrated for great justice!",
            @"numParticipants": nint(500),        
            @"cues": [@[
                      @"wake up",
                      @"stand up from lunch",
                      @"come home from work / school"
            ] mapWith:^id(id title) {return [cues singleWith:titleP(title)];}],
            @"steps": [@[
                       @"take 1 sip of water",
                       @"put water in a glass",
                       @"grab a glass of water"
            ] mapWith:^id(id title) {return [steps singleWith:titleP(title)];}],
        }
        ];
        
        __goals = [__goals mapWith:^id(id object) {
            NTGoal *x = [[NTGoal alloc] init];
            [x fromJSON:object];
            return x;
        }];
    }
    
    return __goals;
}

@end
