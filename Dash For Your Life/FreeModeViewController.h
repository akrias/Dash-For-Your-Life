//
//  FreeModeViewController.h
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Checkpoint.h"
#import "Player.h"
#import "Obstacle.h"
#import "PlayerProfile.h"
#import "Zombie.h"

@interface FreeModeViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) MKMapView *mapView;
@property (strong, nonatomic) Checkpoint *home;  //need to set Checkpoints before push onto navigation stack
@property (strong, nonatomic) Checkpoint *safehouse;
@property (strong, nonatomic) Player *player;
@property (strong, nonatomic) Obstacle *currObstacle;
@property (strong, nonatomic) Zombie *currZombie;
@property (strong, nonatomic) NSArray *items;
@property double remainingDistanceUntilZombie;
@property double remainingDistanceUntilObstacle;
@property (strong, nonatomic) PlayerProfile *profile;
@property (strong, nonatomic) CLLocation *goal;

@end
