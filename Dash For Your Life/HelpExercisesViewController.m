//
//  HelpExercisesViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "HelpExercisesViewController.h"

@interface HelpExercisesViewController ()

@end

@implementation HelpExercisesViewController

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
    self.view.backgroundColor = [UIColor greenColor];
    
    self.title = @"Exercises";
    
    //set scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 850);
    
    UITextView *description1 = [[UITextView alloc] initWithFrame:CGRectMake(12, 20, 300, 85)];
    description1.font = [UIFont fontWithName:@"Helvetica" size:14];
    description1.editable = NO;
    description1.text = @"At each obstacle, the player will be given a set of exercises to complete before they continue with their run. The amount of reps required depends on the player’s physical capabilities.";
    [self.scrollView addSubview:description1];
   

    UILabel *text = [[UILabel alloc] initWithFrame:CGRectMake(12, 110, 130, 30)];
    text.font = [UIFont fontWithName:@"Helvetica" size:14];
    text.text = @"Exercises include:";
    [self.scrollView addSubview:text];
    
    //exercise 1
    UILabel *ex1 = [[UILabel alloc] initWithFrame:CGRectMake(12, 150, 130, 30)];
    ex1.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex1.text = @"Push-Ups";
    [self.scrollView addSubview:ex1];
    
    UITextView *ex1_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 190, 300, 50)];
    ex1_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex1_desc.editable = NO;
    ex1_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:ex1_desc];
    
    //exercise 2
    UILabel *ex2 = [[UILabel alloc] initWithFrame:CGRectMake(12, 250, 130, 30)];
    ex2.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex2.text = @"Sit-Ups";
    [self.scrollView addSubview:ex2];
    
    UITextView *ex2_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 290, 300, 50)];
    ex2_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex2_desc.editable = NO;
    ex2_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:ex2_desc];
    
    //exercise 3
    UILabel *ex3 = [[UILabel alloc] initWithFrame:CGRectMake(12, 350, 130, 30)];
    ex3.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex3.text = @"Squats";
    [self.scrollView addSubview:ex3];
    
    UITextView *ex3_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 390, 300, 50)];
    ex3_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex3_desc.editable = NO;
    ex3_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:ex3_desc];
    
    //exercise 4
    UILabel *ex4 = [[UILabel alloc] initWithFrame:CGRectMake(12, 450, 130, 30)];
    ex4.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex4.text = @"Lunges";
    [self.scrollView addSubview:ex4];
    
    UITextView *ex4_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 490, 300, 50)];
    ex4_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex4_desc.editable = NO;
    ex4_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:ex4_desc];
    
    //exercise 5
    UILabel *ex5 = [[UILabel alloc] initWithFrame:CGRectMake(12, 550, 130, 30)];
    ex5.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex5.text = @"Jumping Jacks";
    [self.scrollView addSubview:ex5];
    
    UITextView *ex5_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 590, 300, 50)];
    ex5_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex5_desc.editable = NO;
    ex5_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:ex5_desc];
    
    //exercise 6
    UILabel *ex6 = [[UILabel alloc] initWithFrame:CGRectMake(12, 650, 130, 30)];
    ex6.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex6.text = @"Arm Circles";
    [self.scrollView addSubview:ex6];
    
    UITextView *ex6_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 690, 300, 50)];
    ex6_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex6_desc.editable = NO;
    ex6_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:ex6_desc];
    
    //exercise 7
    UILabel *ex7 = [[UILabel alloc] initWithFrame:CGRectMake(12, 750, 130, 30)];
    ex7.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex7.text = @"Mountain Climbers";
    [self.scrollView addSubview:ex7];
    
    UITextView *ex7_desc = [[UITextView alloc] initWithFrame:CGRectMake(12, 790, 300, 50)];
    ex7_desc.font = [UIFont fontWithName:@"Helvetica" size:14];
    ex7_desc.editable = NO;
    ex7_desc.text = @"description description description description description description description description";
    [self.scrollView addSubview:ex7_desc];


    
    [self.view addSubview:self.scrollView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
