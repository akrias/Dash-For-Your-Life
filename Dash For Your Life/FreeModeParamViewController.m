//
//  FreeModeParamViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "FreeModeParamViewController.h"
#import "PlayerProfile.h"
#import "Checkpoint.h"

@interface FreeModeParamViewController ()

@end

@implementation FreeModeParamViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.profile = [PlayerProfile getProfile];
        if(self.profile == nil){
            self.profile = [[PlayerProfile alloc] init];
            [PlayerProfile saveProfile:self.profile];
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"FreeRunSetup";
    //Label
    self.mileTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 69, 90, 40)];
    self.mileTimeLabel.text = @"Mile Time:";
    [self.view addSubview: self.mileTimeLabel];
    //text field initialize
    self.mileTimeField = [[UITextField alloc] initWithFrame:CGRectMake(95, 69, 195, 40)];
    self.mileTimeField.delegate = self;
    self.mileTimeField.placeholder = @"XX:XX";
    self.mileTimeField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    self.mileTimeField.borderStyle = UITextBorderStyleRoundedRect;
    if(self.profile.derivedMileTime != 0)
    {
        self.mileTimeField.text = [NSString
                                   stringWithFormat:@"%i:%i", self.profile.derivedMileTime / 60000,
                                   (self.profile.derivedMileTime / 1000) % 60];
    }
    [self.view addSubview:self.mileTimeField];
    //setsafehouse
    self.setSafehouse = [[UIButton alloc] initWithFrame:CGRectMake(20, 115 , 280, 40)];
    [self.setSafehouse setTitle:@"SetDestination" forState:UIControlStateNormal];
    self.setSafehouse.backgroundColor = [UIColor whiteColor];
    [self.setSafehouse setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.setSafehouse];
    
    //start
    self.startButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 165, 280, 40)];
    [self.startButton setTitle:@"START!" forState:UIControlStateNormal];
    [self.startButton setTitle:@"Set Parameters" forState:UIControlStateDisabled];
    self.startButton.enabled = NO;
    self.startButton.backgroundColor = [UIColor whiteColor];
    [self.startButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.startButton setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    [self.view addSubview:self.startButton];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSArray *minAndSec = [textField.text componentsSeparatedByString:@":"];
    self.profile.derivedMileTime = [minAndSec[0] intValue] * 60000 + [minAndSec[1] intValue] * 1000;
    [PlayerProfile saveProfile:self.profile];
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
