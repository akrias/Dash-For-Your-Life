//
//  Item.h
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
typedef enum{
    LifeRecovery,
    BonusPoints,
    NoObstacles,
    StopZombies,
    SlowZombies,
    DestroyZombies,
    SpawnZombies
} EffectType;

@property double latitude;
@property double longitude;
@property EffectType effect;

-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude;
-(void)setRandomEffect;
@end
