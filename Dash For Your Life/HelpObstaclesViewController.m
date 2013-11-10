//
//  HelpObstaclesViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "HelpObstaclesViewController.h"

@interface HelpObstaclesViewController ()

@end

@implementation HelpObstaclesViewController

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
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.title = @"Obstacles";
    
    //set scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 540);
    
    UITextView *description1 = [[UITextView alloc] initWithFrame:CGRectMake(12, 20, 300, 130)];
    description1.font = [UIFont fontWithName:@"Helvetica" size:14];
    description1.editable = NO;
    description1.text = @"Obstacle events will appear randomly as the player makes his or her way towards the destination or original location. The player may decide to tackle the obstacle and complete whatever the challenge entails, or may choose to skip the obstacle entirely and continue on a different path.";
    [self.scrollView addSubview:description1];
    
    UITextView *description2 = [[UITextView alloc] initWithFrame:CGRectMake(12, 160, 300, 120)];
    description2.font = [UIFont fontWithName:@"Helvetica" size:14];
    description2.editable = NO;
    description2.text = @"These events will be appear on the map ahead of time, notifying the player the player will be encountering a random challenge. Once the player comes into range of the location, he or she must complete the challenge.";
    [self.scrollView addSubview:description2];
    
    UITextView *description3 = [[UITextView alloc] initWithFrame:CGRectMake(12, 290, 300, 70)];
    description3.font = [UIFont fontWithName:@"Helvetica" size:14];
    description3.editable = NO;
    description3.text = @"Once completed, the player will continue on towards the designated location. If the player fails the challenge, life will be deducted.";
    [self.scrollView addSubview:description3];
    
    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
