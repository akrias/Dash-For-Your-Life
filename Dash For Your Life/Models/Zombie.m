//
//  Zombie.m
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "Zombie.h"

@implementation Zombie
-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude speed:(double)aSpeed maxDistance:(double)aDistance
{
    self = [super init];
    self.latitude = aLatitude;
    self.longitude = aLongitude;
    self.speed = aSpeed;
    self.maxDistanceFromPlayer = aDistance;
    self.distanceFromPlayer = 10;
    return self;
}
@end
