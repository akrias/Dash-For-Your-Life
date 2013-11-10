//
//  PlayerProfile.h
//  Dash For Your Life
//
//  Created by David Lee on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerProfile : NSObject <NSCoding>
@property double totalDistanceTravelled; // in meters
@property double topSpeed; // in meters per second?
@property int derivedMileTime; // in milliseconds
@property int numberOfZombiesEscaped;
@property int numberOfObstaclesPassed;
@property int numberOfWins;

+(NSString *)getPathToArchive;
+(void)saveProfile:(PlayerProfile *)aProfile;
+(PlayerProfile *)getProfile;
@end
