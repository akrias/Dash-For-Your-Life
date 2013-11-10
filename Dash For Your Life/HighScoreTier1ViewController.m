//
//  HighScoreTier1ViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/10/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "HighScoreTier1ViewController.h"

@interface HighScoreTier1ViewController ()

@end

@implementation HighScoreTier1ViewController

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
    self.view.backgroundColor = [UIColor grayColor];
    
    
    //self.screenNumber.text = [NSString stringWithFormat:@"Screen #%d", self.index];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
