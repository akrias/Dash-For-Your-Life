//
//  Zombie.h
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Zombie : NSObject
@property double speed; // in meters per millisecond
@property double distanceFromPlayer; // in meters
@property double maxDistanceFromPlayer; // in meters
@property double latitude;
@property double longitude;

-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude speed:(double)aSpeed maxDistance:(double)aDistance;
@end
