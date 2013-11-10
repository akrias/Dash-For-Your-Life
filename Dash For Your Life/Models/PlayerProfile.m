//
//  PlayerProfile.m
//  Dash For Your Life
//
//  Created by David Lee on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "PlayerProfile.h"

@implementation PlayerProfile
-(id)init
{
    self = [super init];
    if(self)
    {
        self.totalDistanceTravelled = 0;
        self.topSpeed = 0;
        self.derivedMileTime = 0;
        self.numberOfZombiesEscaped = 0;
        self.numberOfObstaclesPassed = 0;
        self.numberOfWins = 0;
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeDouble:self.totalDistanceTravelled
                     forKey:@"totalDistanceTravelled"];
    [aCoder encodeDouble:self.topSpeed
                  forKey:@"topSpeed"];
    [aCoder encodeDouble:self.derivedMileTime
                  forKey:@"derivedMileTime"];
    [aCoder encodeInt:self.numberOfZombiesEscaped
               forKey:@"numberOfZombiesEscaped"];
    [aCoder encodeInt:self.numberOfObstaclesPassed
               forKey:@"numberOfObstaclesPassed"];
    [aCoder encodeInt:self.numberOfWins
               forKey:@"numberOfWins"];
}

-(PlayerProfile *)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self)
    {
        self.totalDistanceTravelled = [aDecoder decodeDoubleForKey:@"totalDistanceTravelled"];
        self.topSpeed = [aDecoder decodeDoubleForKey:@"topSpeed"];
        self.derivedMileTime = [aDecoder decodeDoubleForKey:@"derivedMileTime"];
        self.numberOfZombiesEscaped = [aDecoder decodeIntForKey:@"numberOfZombiesEscaped"];
        self.numberOfObstaclesPassed = [aDecoder decodeIntForKey:@"numberOfObtaclesPassed"];
        self.numberOfWins = [aDecoder decodeIntForKey:@"numberOfWins"];
    }
    return self;
}

+(NSString *)getPathToArchive
{
    NSString *docsDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [docsDir stringByAppendingPathComponent:@"player_profile.model"];
}

+(void)saveProfile:(PlayerProfile *)aProfile
{
    [NSKeyedArchiver archiveRootObject:aProfile toFile:[PlayerProfile getPathToArchive]];
}

+(PlayerProfile *)getProfile
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[PlayerProfile getPathToArchive]];
}
@end
