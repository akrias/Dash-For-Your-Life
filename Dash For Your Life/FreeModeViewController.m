//
//  FreeModeViewController.m
//  Dash For Your Life
//
//  Created by Vincent Woo on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "FreeModeViewController.h"
#import "Checkpoint.h"
#import "Zombie.h"
#import "Player.h"
#import "Item.h"
#import "Obstacle.h"

@interface FreeModeViewController ()

@end

@implementation FreeModeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    self.mapView = [[MKMapView alloc] init];
    self.mapView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    self.mapView.delegate = self;
    double maxLat, minLat, maxLng, minLng;
    if(self.home.coordinate.latitude > self.safehouse.coordinate.latitude){
        maxLat = self.home.coordinate.latitude;
        minLat = self.safehouse.coordinate.latitude;
    }
    else
    {
        maxLat = self.safehouse.coordinate.latitude;
        minLat = self.home.coordinate.latitude;
    }
    if(self.home.coordinate.longitude > self.safehouse.coordinate.longitude)
    {
        maxLng = self.home.coordinate.longitude;
        minLng = self.safehouse.coordinate.longitude;
    }
    else
    {
        maxLng = self.safehouse.coordinate.longitude;
        minLng = self.home.coordinate.longitude;
    }
    CLLocationCoordinate2D boundsCenter = CLLocationCoordinate2DMake((maxLat + minLat) / 2, (maxLng + minLng) / 2);
    MKCoordinateSpan boundsSpan = MKCoordinateSpanMake(maxLat - minLat, maxLng - minLng);
    MKCoordinateRegion boundsRegion = MKCoordinateRegionMake(boundsCenter, boundsSpan);
    self.mapView.zoomEnabled = NO;
    self.mapView.scrollEnabled = NO;
    self.mapView.showsUserLocation = YES;
    [self.mapView setRegion:boundsRegion];
    [self.view addSubview:self.mapView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
