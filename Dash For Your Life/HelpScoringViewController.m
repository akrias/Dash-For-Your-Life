//
//  HelpScoringViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "HelpScoringViewController.h"

@interface HelpScoringViewController ()

@end

@implementation HelpScoringViewController

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
    self.view.backgroundColor = [UIColor purpleColor];
    
    self.title = @"Scoring";
    
    //set scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 540);
    
    UITextView *description1 = [[UITextView alloc] initWithFrame:CGRectMake(12, 20, 300, 100)];
    description1.font = [UIFont fontWithName:@"Helvetica" size:14];
    description1.editable = NO;
    description1.text = @"The player’s score will be determined at the end up the run. The score will be based on the time of the course, distance ran, remaining life points, and any bonus points collected through items.";
    [self.scrollView addSubview:description1];
    
    
    UITextView *description2 = [[UITextView alloc] initWithFrame:CGRectMake(12, 130, 300, 80)];
    description2.font = [UIFont fontWithName:@"Helvetica" size:14];
    description2.editable = NO;
    description2.text = @"Player scores will be recorded under a high score board that corresponds to the difficulty set at the beginning of the run.";
    [self.scrollView addSubview:description2];

    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
