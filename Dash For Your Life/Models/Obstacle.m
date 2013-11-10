//
//  Obstacle.m
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "Obstacle.h"

@implementation Obstacle
-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude
{
    self = [super init];
    self.latitude = aLatitude;
    self.longitude = aLongitude;
    return self;
}

-(void)setRandomExercise
{
    self.punishment = (PunishmentType) (arc4random() % 7);  //chooses a random exercise punishment(does not include FastZombies)
}

+(double)getDistanceUntilNextObstacle
{
    return (drand48() * 0.1) + 0.2;
}
@end
