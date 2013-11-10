//
//  HelpGeneralViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "HelpGeneralViewController.h"

@interface HelpGeneralViewController ()

@end

@implementation HelpGeneralViewController

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
    self.view.backgroundColor = [UIColor redColor];
    
    self.title = @"General Gameplay";
    
    //set scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 540);
    
    UITextView *description1 = [[UITextView alloc] initWithFrame:CGRectMake(12, 20, 300, 120)];
    description1.font = [UIFont fontWithName:@"Helvetica" size:14];
    description1.editable = NO;
    description1.text = @"The player will begin the game by selecting a destination as their safehouse. The safehouse will act as an intermediary checkpoint where the player will be able to take a short break. Players will then continue their run back to their original starting position.";
    [self.scrollView addSubview:description1];
    
    UITextView *description2 = [[UITextView alloc] initWithFrame:CGRectMake(12, 150, 300, 130)];
    description2.font = [UIFont fontWithName:@"Helvetica" size:14];
    description2.editable = NO;
    description2.text = @"Along the way, players will encounter zombies and obstacles that will hinder the player by deviating their paths away from the destination or by testing their stamina through set exercises. Should the player fall behind for a zombie attack or fail to surpass the obstacle, life points will be deducted.";
    [self.scrollView addSubview:description2];
    
    UITextView *description3 = [[UITextView alloc] initWithFrame:CGRectMake(12, 290, 300, 90)];
    description3.font = [UIFont fontWithName:@"Helvetica" size:14];
    description3.editable = NO;
    description3.text = @"The game is over when the player completes the run with life points still intact or when the player’s life points reaches zero, resulting in a failure.";
    [self.scrollView addSubview:description3];
    
    
    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

@end
