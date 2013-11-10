//
//  HelpItemsViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "HelpItemsViewController.h"

@interface HelpItemsViewController ()

@end

@implementation HelpItemsViewController

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
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"Items";
    
    //set scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 780);
    
    UITextView *description1 = [[UITextView alloc] initWithFrame:CGRectMake(12, 20, 300, 100)];
    description1.font = [UIFont fontWithName:@"Helvetica" size:14];
    description1.editable = NO;
    description1.text = @"Items will randomly spawn within a boundary between the starting location and the safehouse. Players may pick up these items that may or may not benefit the outcome of the run.";
    [self.scrollView addSubview:description1];

    UILabel *text = [[UILabel alloc] initWithFrame:CGRectMake(12, 130, 130, 30)];
    text.font = [UIFont fontWithName:@"Helvetica" size:14];
    text.text = @"Items include:";
    [self.scrollView addSubview:text];
    
    //life
    UILabel *item1 = [[UILabel alloc] initWithFrame:CGRectMake(12, 170, 130, 30)];
    item1.font = [UIFont fontWithName:@"Helvetica" size:14];
    item1.text = @"First-Aid Kit";
    [self.scrollView addSubview:item1];
    
    UITextView *item1_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 210, 300, 50)];
    item1_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    item1_desc.editable = NO;
    item1_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:item1_desc];
    
    //bonus package
    UILabel *item2 = [[UILabel alloc] initWithFrame:CGRectMake(12, 270, 130, 30)];
    item2.font = [UIFont fontWithName:@"Helvetica" size:14];
    item2.text = @"Bonus Package";
    [self.scrollView addSubview:item2];
    
    UITextView *item2_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 310, 300, 50)];
    item2_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    item2_desc.editable = NO;
    item2_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:item2_desc];
    
    //utility box - slow
    UILabel *item3 = [[UILabel alloc] initWithFrame:CGRectMake(12, 370, 200, 30)];
    item3.font = [UIFont fontWithName:@"Helvetica" size:14];
    item3.text = @"Utility Box - Zombie Crawl";
    [self.scrollView addSubview:item3];
    
    UITextView *item3_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 410, 300, 50)];
    item3_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    item3_desc.editable = NO;
    item3_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:item3_desc];
    
    
    //utility box - haste
    UILabel *item4 = [[UILabel alloc] initWithFrame:CGRectMake(12, 470, 200, 30)];
    item4.font = [UIFont fontWithName:@"Helvetica" size:14];
    item4.text = @"Utility Box - Zombie Fervor";
    [self.scrollView addSubview:item4];
    
    UITextView *item4_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 510, 300, 50)];
    item4_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    item4_desc.editable = NO;
    item4_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:item4_desc];
    
    //utility box - pod
    UILabel *item5 = [[UILabel alloc] initWithFrame:CGRectMake(12, 570, 200, 30)];
    item5.font = [UIFont fontWithName:@"Helvetica" size:14];
    item5.text = @"Utility Box - Zombie Pod";
    [self.scrollView addSubview:item5];
    
    UITextView *item5_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 610, 300, 50)];
    item5_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    item5_desc.editable = NO;
    item5_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:item5_desc];
    
    //utility box - wipe
    UILabel *item6 = [[UILabel alloc] initWithFrame:CGRectMake(12, 670, 200, 30)];
    item6.font = [UIFont fontWithName:@"Helvetica" size:14];
    item6.text = @"Utility Box - Zombie-acolypse";
    [self.scrollView addSubview:item6];
    
    UITextView *item6_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 710, 300, 50)];
    item6_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    item6_desc.editable = NO;
    item6_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:item6_desc];


    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
