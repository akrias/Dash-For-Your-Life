//
//  Zombie.m
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "Zombie.h"

@implementation Zombie
-(id)initWithLevel:(int)level coordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    if(self)
    {
        self.speed = [Zombie getRandomAtLevel:level];
        self.timeTilExpire = 20000;
        self.lastUpdate = CACurrentMediaTime();
        self.coordinate = coordinate;
    }
    return self;
}

/*
-(id)initRandomZombieWithLevel:(int)level coordinate:(CLLocationCoordinate2D)aCoordinate
{
    double lowSpeed = 0;
    double highSpeed = 0;
    
    double avgSpeed = 0;
    
    //tier 14:00 - 15:00
    if(level == 0) {
        lowSpeed = 1.79;
        highSpeed = 1.92;
        avgSpeed = (lowSpeed + highSpeed) / 2;
        
    }
    
    //tier 13:00 - 14:00
    else if(level == 1) {
        lowSpeed = 1.92;
        highSpeed = 2.06;
        avgSpeed = (lowSpeed + highSpeed) / 2;
        
    }
    
    
    
    NSArray *minSpeedArray = @[@1.79,@1.92,@2.06,@2.24,@2.44,@2.68,@2.98,@3.35,@3.83,@4.47];
    NSArray *maxSpeedArray = @[@1.92,@2.06,@2.24,@2.44,@2.68,@2.98,@3.35,@3.83,@4.47,@5.36];
    

    
    
    
    
    
}*/



@end
