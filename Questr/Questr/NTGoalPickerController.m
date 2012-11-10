//
//  NTViewController.m
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import "NTGoalPickerController.h"
#import "NTGoal.h"
#import "NTCuePickerController.h"
#import "NTGoalCell.h"
#import "NTUtil.h"

@interface NTGoalPickerController ()
@end

@implementation NTGoalPickerController



- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return NTGoal.goals.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NTGoal *g = NTGoal.goals[indexPath.row];
	NTGoalCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HabitCell"];
	cell.titleLabel.text = [g.title lowercaseString];
    cell.participantsLabel.text = nsprintf(@"%d participants", g.numParticipants.intValue);

    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([[segue identifier] isEqualToString:@"HabitSelected"])
//    {
        NTCuePickerController *detailViewController = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        detailViewController.goal = NTGoal.goals[indexPath.row];
//    }
}

@end
