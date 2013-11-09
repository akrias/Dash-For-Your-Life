//
//  SplashViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "SplashViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //sets an image
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"zombie_splash.jpg"]];
    [image setContentMode:UIViewContentModeScaleAspectFill];
    
    image.frame = CGRectMake(0, 20, 320, 548);
    [self.view addSubview:image];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
