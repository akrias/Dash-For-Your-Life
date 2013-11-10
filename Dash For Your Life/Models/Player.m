//
//  Player.m
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "Player.h"

@implementation Player
-(id)init
{
    return [self initWithLatitude:0 longitude:0];
}

-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude
{
    self = [super init];
    if(self)
    {
        self.latitude = aLatitude;
        self.longitude = aLongitude;
        self.hitPoints = 100;
        self.cumulatedScore = 0;
        self.distanceTravelled = 0;
        self.timeSinceStart = 0;
    }
    return self;
}

@end
