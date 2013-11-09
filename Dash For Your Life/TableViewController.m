//
//  TableViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "TableViewController.h"
#import "FreeModeParamViewController.h"
#import "SettingsViewController.h"
#import "HelpViewController.h"
#import "StatisticsViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.menuOptions = @[@"Free Mode",@"Settings",@"Help",@"Statistics"];
    }
    return self;
}

//function returning number of rows in array
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return self.menuOptions.count;
}

//
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

//
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{    
    if (indexPath.row == 0) {
        FreeModeParamViewController *freeModeParamVC = [[FreeModeParamViewController alloc] init];
        [self.navigationController pushViewController:freeModeParamVC animated:YES];
    }
    
    else if (indexPath.row == 1) {
        SettingsViewController *settingsVC = [[SettingsViewController alloc] init];
        [self.navigationController pushViewController:settingsVC animated:YES];
    }
    
    else if (indexPath.row == 2) {
        HelpViewController *helpVC = [[HelpViewController alloc] init];
        [self.navigationController pushViewController:helpVC animated:YES];
    }

    else if (indexPath.row == 3) {
        StatisticsViewController *statisticsVC = [[StatisticsViewController alloc] init];
        [self.navigationController pushViewController:statisticsVC animated:YES];
    }

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

@end
