//
//  HelpZombiesViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "HelpZombiesViewController.h"

@interface HelpZombiesViewController ()

@end

@implementation HelpZombiesViewController

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
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.title = @"Zombies";
    
    //set scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 540);
    
    UITextView *description1 = [[UITextView alloc] initWithFrame:CGRectMake(12, 20, 300, 90)];
    description1.font = [UIFont fontWithName:@"Helvetica" size:14];
    description1.editable = NO;
    description1.text = @"The nemesis of the game. Zombies will appear randomly on the map and commence chase. They may also spawn at obstacles, increasing the difficulty of the given challenge.";
    [self.scrollView addSubview:description1];
    
    UITextView *description2 = [[UITextView alloc] initWithFrame:CGRectMake(12, 120, 300, 90)];
    description2.font = [UIFont fontWithName:@"Helvetica" size:14];
    description2.editable = NO;
    description2.text = @"Zombies will continue to trail after the player at a similar pace; however, there are certain factors in the game that will temporarily alter their running speed.";
    [self.scrollView addSubview:description2];
    
    UITextView *description3 = [[UITextView alloc] initWithFrame:CGRectMake(12, 220, 300, 70)];
    description3.font = [UIFont fontWithName:@"Helvetica" size:14];
    description3.editable = NO;
    description3.text = @"Zombies will eventually stop giving chase after the player has ran a certain distance away from the zombie.";
    [self.scrollView addSubview:description3];
    
    [self.view addSubview:self.scrollView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
