//
//  NTViewController.m
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import "NTViewController.h"
#import "NTGoal.h"

@interface NTViewController ()
@end

@implementation NTViewController



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
    NSArray *g = NTGoal.goals;
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HabitCell"];
	cell.textLabel.text = [g[indexPath.row] title];
	cell.detailTextLabel.text = [g[indexPath.row] description];
    return cell;
}

@end
