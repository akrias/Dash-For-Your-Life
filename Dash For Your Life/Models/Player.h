//
//  Player.h
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Player : NSObject

@property int hitPoints;
@property int cumulatedScore;
@property double distanceTravelled;  //in meters
@property int timeSinceStart;  //in milliseconds
@property int mileTime;
@property (nonatomic) CLLocationCoordinate2D coordinate;

-(id)initWithCoordinate:(CLLocationCoordinate2D)aCoordinate;
@end
