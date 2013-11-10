//
//  Player.m
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "Player.h"

@implementation Player
-(id)initWithCoordinate:(CLLocationCoordinate2D)aCoordinate
{
    self = [super init];
    if(self)
    {
        self.coordinate = aCoordinate;
        self.hitPoints = 100;
        self.cumulatedScore = 0;
        self.distanceTravelled = 0;
        self.timeSinceStart = 0;
    }
    return self;
}

@end
