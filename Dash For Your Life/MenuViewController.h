//
//  MenuViewController.h
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"

@interface MenuViewController : UINavigationController {
    BOOL _splashFlag;
}

@property (strong, nonatomic) TableViewController *tableViewController;


@end
