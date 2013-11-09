//
//  Checkpoint.h
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Checkpoint : NSObject
@property double latitude;
@property double longitude;
-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude;
@end
