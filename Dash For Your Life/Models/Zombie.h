//
//  Zombie.h
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Zombie : NSObject <MKAnnotation> 
@property double speed; // in meters per millisecond
@property double distanceFromPlayer; // in meters
@property double maxDistanceFromPlayer; // in meters
@property CLLocationCoordinate2D coordinate;
@property double latitude;
@property double longitude;




-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude speed:(double)aSpeed maxDistance:(double)aDistance;

-(id)initRandomZombieWithLevel:(int)level coordinate:(CLLocationCoordinate2D)aCoordinate;
@end
