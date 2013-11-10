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

-(BOOL)didZombieCatchPlayerAtLocation:(CLLocation *)playerLocation
{
    double currTime = CACurrentMediaTime();
    double initialDistanceFromPlayer = [[[CLLocation alloc] initWithLatitude:self.coordinate.latitude longitude:self.coordinate.longitude ] distanceFromLocation:playerLocation];
    double distTravelled = (currTime - self.lastUpdate) * self.speed;
    self.lastUpdate = currTime;
    if(initialDistanceFromPlayer <= distTravelled)
    {
        return YES;
    }
    else
    {
        double latToPlayer = playerLocation.coordinate.latitude - self.coordinate.latitude;
        double lngToPlayer = playerLocation.coordinate.longitude - self.coordinate.longitude;
        double deltaLat = distTravelled / initialDistanceFromPlayer * latToPlayer;
        double deltaLng = distTravelled / initialDistanceFromPlayer * lngToPlayer;
        self.coordinate = CLLocationCoordinate2DMake(self.coordinate.latitude + deltaLat, self.coordinate.longitude + deltaLng);
        return NO;
    }
}

+(double)getDistanceUntilNextZombie
{
    return (drand48() * 0.3) + 0.1;
}

+(double)getRandomAtLevel:(int)level
{
    int randomSelector = arc4random() % 8;
    if(randomSelector < 1)
    {
        return [[Zombie getZombieLevels][level][2] doubleValue];
    }
    else if(randomSelector < 5)
    {
        return [[Zombie getZombieLevels][level][1] doubleValue];
    }
    else
    {
        return [[Zombie getZombieLevels][level][0] doubleValue];
    }
}

+(NSArray *)getZombieLevels
{
    return @[@[@4.47, @4.88, @5.36], @[@3.83, @4.13, @4.47], @[@3.35, @3.58, @3.83], @[@2.98, @3.16, @3.35], @[@2.68, @2.82, @2.98],
             @[@2.44, @2.55, @2.68], @[@2.24, @2.33, @2.44], @[@2.06, @2.15, @2.24], @[@1.92, @1.99, @2.06], @[@1.79, @1.85, @1.92]];
}
@end
