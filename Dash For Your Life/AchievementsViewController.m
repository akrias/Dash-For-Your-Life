//
//  AchievementsViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "AchievementsViewController.h"

@interface AchievementsViewController ()

@end

@implementation AchievementsViewController

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
    self.view.backgroundColor = [UIColor brownColor];
    self.title = @"Achievements";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
