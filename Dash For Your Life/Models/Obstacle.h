//
//  Obstacle.h
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Obstacle : NSObject

typedef enum{
    PushUps,
    SitUps,
    Squats,
    Lunges,
    JumpingJacks,
    ArmCircles,
    MountainClimbers,
    FastZombies
} PunishmentType;

@property double latitude;
@property double longitude;
@property PunishmentType punishment;
@property int reps;  //number of exercise reps

-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude;
-(void)setRandomExercise;

@end
