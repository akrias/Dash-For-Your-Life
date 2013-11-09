//
//  MenuViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "MenuViewController.h"
#import "SplashViewController.h"
#import "TableViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _splashFlag = NO;
        
        self.tableViewController = [[TableViewController alloc] init];
        [self pushViewController:self.tableViewController animated:YES];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Menu";
        
    
}



- (void)viewDidLayoutSubviews
{
    if(!_splashFlag) {
        SplashViewController *splashViewController = [[SplashViewController alloc] init];
        [self presentViewController:splashViewController animated:NO completion:nil];
        _splashFlag = YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
