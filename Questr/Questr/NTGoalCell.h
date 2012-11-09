//
//  NTGoalCell.h
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NTGoalCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UILabel *participantsLabel;
@property (nonatomic, strong) IBOutlet UILabel *successLabel;
@end
