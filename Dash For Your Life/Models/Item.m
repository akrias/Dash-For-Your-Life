//
//  Item.m
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "Item.h"

@implementation Item
-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude
{
    self = [super init];
    self.latitude= aLatitude;
    self.longitude = aLongitude;
    return self;
}

-(void)setRandomEffect
{
    int randomKey = arc4random() % 100;
    if(randomKey < 32) // 32% chance
    {
        self.effect = SpawnZombies;
    }
    else if(randomKey < 63) // 31% chance
    {
        self.effect = BonusPoints;
    }
    else if(randomKey < 83) // 20% chance
    {
        self.effect = SlowZombies;
    }
    else if(randomKey < 93) // 10% chance
    {
        self.effect = NoObstacles;
    }
    else if(randomKey < 98) // 5% chance
    {
        self.effect = StopZombies;
    }
    else // 2% chance
    {
        self.effect = DestroyZombies;
    }
}
@end
