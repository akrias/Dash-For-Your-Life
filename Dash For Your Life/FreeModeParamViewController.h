//
//  FreeModeParamViewController.h
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerProfile.h"
#import "DestinationSelectorViewController.h"
#import "Checkpoint.h"

@interface FreeModeParamViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic)UITextField *mileTimeField;
@property (strong, nonatomic)PlayerProfile *profile;
@property (strong, nonatomic)UILabel *mileTimeLabel;
@property (strong, nonatomic)UIButton *setSafehouse;
@property (strong, nonatomic)UIButton *startButton;
@property (strong, nonatomic)DestinationSelectorViewController * destinationSelectorVC;
@property (strong, nonatomic)Checkpoint *safehouse;
@end
