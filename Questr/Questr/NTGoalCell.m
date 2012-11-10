//
//  NTGoalCell.m
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import "NTGoalCell.h"
//#import <QuartzCore/QuartzCore.h>

@implementation NTGoalCell
@synthesize titleLabel, participantsLabel, successLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        CALayer *bottomBorder = [CALayer layer];
        int w = self.bounds.size.width, h = self.bounds.size.height;
        int borderWidth = w * 0.8;
        int xOffset = (w - borderWidth) / 2;
        int borderHeight = 5;
        int yOffset = (h - (borderHeight + 2));
        
        UIView *bottomBorder = [[UIView alloc] initWithFrame:CGRectMake(xOffset, yOffset, borderWidth, borderHeight)];
//        bottomBorder.bounds = CGRectMake(xOffset, yOffset, borderWidth, borderHeight);
//        bottomBorder.position = self.center;
        bottomBorder.bounds = self.bounds;
        bottomBorder.backgroundColor = UIColor.grayColor;

        [self addSubview:bottomBorder];
//        [self.layer insertSublayer:bottomBorder atIndex:0];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
