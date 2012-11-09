//
//  NTCuePickerController.m
//  Questr
//
//  Created by Ben Hoffman on 11/9/12.
//  Copyright (c) 2012 Ben Hoffman. All rights reserved.
//

#import "NTCuePickerController.h"
#import "NTUtil.h"
#import "NTCue.h"

@interface NTCuePickerController ()

@end

@implementation NTCuePickerController
@synthesize goal;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger count = self.goal.cues.count;
	return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *g = goal.cues;
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CueCell"];
	cell.textLabel.text = [g[indexPath.row] title];
    NSString *desc = nsprintf(@"%d%% success rate", (int)([g[indexPath.row] successRate].floatValue * 100));
	cell.detailTextLabel.text = desc;
    return cell;
}

@end
