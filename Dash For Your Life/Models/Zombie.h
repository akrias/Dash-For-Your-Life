//
//  Zombie.h
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface Zombie : NSObject <MKAnnotation>{
    NSArray *zombieLevels;
}
@property double speed; // in meters per millisecond
@property double timeTilExpire;
@property double lastUpdate;
@property (nonatomic) CLLocationCoordinate2D coordinate;

-(id)initWithLevel:(int)level coordinate:(CLLocationCoordinate2D) coordinate;
-(BOOL)didZombieCatchPlayerAtLocation:(CLLocation *)playerLocation;
+(double)getDistanceUntilNextZombie;
+(double)getRandomAtLevel:(int) level;
+(NSArray *)getZombieLevels;
@end
