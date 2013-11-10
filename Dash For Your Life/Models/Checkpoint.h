//
//  Checkpoint.h
//  Dash For Your Life
//
//  Created by David Lee on 11/8/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Checkpoint : NSObject <MKAnnotation>
@property (nonatomic)CLLocationCoordinate2D coordinate;
-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude;
@end
