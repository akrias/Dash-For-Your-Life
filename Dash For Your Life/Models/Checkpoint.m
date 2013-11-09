//
//  Checkpoint.m
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "Checkpoint.h"

@implementation Checkpoint
-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude
{
    self = [super init];
    self.latitude = aLatitude;
    self.longitude = aLongitude;
    return self;
}
@end
