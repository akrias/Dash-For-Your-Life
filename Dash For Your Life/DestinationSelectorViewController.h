//
//  DestinationSelectorViewController.h
//  Dash For Your Life
//
//  Created by David Lee on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Checkpoint.h"

@interface DestinationSelectorViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic)MKMapView *mapView;
@property (strong, nonatomic)Checkpoint *safeHouse;
@property BOOL hasSetCenter;
@end
