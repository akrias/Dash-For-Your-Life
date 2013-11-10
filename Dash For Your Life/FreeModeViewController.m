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
    self.mapView.frame = self.view.frame;
    self.mapView.delegate = self;
    double maxLat, minLat, maxLng, minLng;
    if(self.home.latitude > self.safehouse.latitude){
        maxLat = self.home.latitude;
        minLat = self.safehouse.latitude;
    }
    else
    {
        maxLat = self.safehouse.latitude;
        minLat = self.home.latitude;
    }
    if(self.home.longitude > self.safehouse.longitude)
    {
        maxLng = self.home.longitude;
        minLng = self.safehouse.longitude;
    }
    else
    {
        maxLng = self.safehouse.longitude;
        minLng = self.home.longitude;
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
