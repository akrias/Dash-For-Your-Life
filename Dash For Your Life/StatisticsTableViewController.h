//
//  StatisticsTableViewController.h
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HighScoresViewController;

@interface StatisticsTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *menuOptions;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@property (strong, nonatomic) HighScoresViewController *viewController;
@end
