//
//  SplashViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "SplashViewController.h"
#import "QuartzCore/QuartzCore.h"

//#import "MenuViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.view setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //sets an image
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Zombie_Splash.png"]];
    [image setContentMode:UIViewContentModeScaleAspectFit];
    
    image.frame = CGRectMake(0, 20, 320, 568);
    [self.view addSubview:image];
    
    UILabel *splashMsg = [[UILabel alloc] initWithFrame:CGRectMake(120, 60, 120, 30)];
    splashMsg.text = @"Tap to start!";
    [self.view addSubview:splashMsg];
    
    
    self.splashButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.splashButton.frame = image.frame;
    [self.splashButton addTarget:self action:@selector(dismissSplashView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.splashButton];

}


- (void)dismissSplashView:(UIButton *)sender
{
    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
