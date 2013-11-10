//
//  StatisticsTableViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "StatisticsTableViewController.h"
#import "PlayerStatsViewController.h"
#import "HighScoresViewController.h"
#import "AchievementsViewController.h"
#import "HighScoreTier1ViewController.h"

@interface StatisticsTableViewController ()

@end

@implementation StatisticsTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.menuOptions = @[@"Player Stats",@"High Scores",@"Achievements"];
    }
    return self;
}

//function returning number of rows in array
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return self.menuOptions.count;
}

//creating cells within table
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = self.menuOptions[indexPath.row];
    
    return cell;
}

//cells linking to respective view controllers
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        PlayerStatsViewController *playerStatsVC = [[PlayerStatsViewController alloc] init];
        [self.navigationController pushViewController:playerStatsVC animated:YES];
    }
    
    else if (indexPath.row == 1) {
        //NSArray *viewControllers = [NSArray ];
        HighScoresViewController *highScoresVC = [[HighScoresViewController alloc] init];
        
        //[highScoresVC setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
 
        [self.navigationController pushViewController:highScoresVC animated:YES];
    }
    
    else if (indexPath.row == 2) {
        AchievementsViewController *achievementsVC = [[AchievementsViewController alloc] init];
        [self.navigationController pushViewController:achievementsVC animated:YES];
    }
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"Statistics";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
