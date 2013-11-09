//
//  HelpViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "HelpViewController.h"
#import "AccordionView.h"

#import "HelpGeneralViewController.h"
#import "HelpObstaclesViewController.h"
#import "HelpZombiesViewController.h"
#import "HelpExercisesViewController.h"
#import "HelpItemsViewController.h"
#import "HelpScoringViewController.h"

@interface HelpViewController ()

@end

@implementation HelpViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.menuOptions = @[@"General Gameplay",@"Obstacles",@"Zombies",@"Exercises",@"Items",@"Scoring"];
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
        HelpGeneralViewController *helpGeneralVC = [[HelpGeneralViewController alloc] init];
        [self.navigationController pushViewController:helpGeneralVC animated:YES];
    }
    
    else if (indexPath.row == 1) {
        HelpObstaclesViewController *helpObstaclesVC = [[HelpObstaclesViewController alloc] init];
        [self.navigationController pushViewController:helpObstaclesVC animated:YES];
    }
    
    else if (indexPath.row == 2) {
        HelpZombiesViewController *helpZombiesVC = [[HelpZombiesViewController alloc] init];
        [self.navigationController pushViewController:helpZombiesVC animated:YES];
    }
    
    else if (indexPath.row == 3) {
        HelpExercisesViewController *helpExercisesVC = [[HelpExercisesViewController alloc] init];
        [self.navigationController pushViewController:helpExercisesVC animated:YES];
    }
        
    else if (indexPath.row == 4) {
        HelpItemsViewController *helpItemsVC = [[HelpItemsViewController alloc] init];
        [self.navigationController pushViewController:helpItemsVC animated:YES];
    }

    else if (indexPath.row == 5) {
        HelpScoringViewController *helpScoringVC = [[HelpScoringViewController alloc] init];
        [self.navigationController pushViewController:helpScoringVC animated:YES];
    }
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //self.view.backgroundColor = [UIColor grayColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
