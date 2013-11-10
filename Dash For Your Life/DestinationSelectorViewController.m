//
//  DestinationSelectorViewController.m
//  Dash For Your Life
//
//  Created by David Lee on 11/9/13.
//  Copyright (c) 2013 Vivid. All rights reserved.
//

#import "DestinationSelectorViewController.h"
#import "UIKit/UILongPressGestureRecognizer.h"

@interface DestinationSelectorViewController ()

@end

@implementation DestinationSelectorViewController

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
    self.title = @"Pick a Spot";
	// Do any additional setup after loading the view.
    self.mapView = [[MKMapView alloc] init];
    self.mapView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    self.mapView.delegate = self;
    self.mapView.showsUserLocation = YES;
    if(self.mapView.userLocation != nil){
        CLLocationDistance regionWidth = 3000;
        CLLocationDistance regionHeight = 3000;
        MKCoordinateRegion startRegion =MKCoordinateRegionMakeWithDistance(self.mapView.userLocation.coordinate, regionWidth, regionHeight);
        [self.mapView setRegion:startRegion];
        self.home.coordinate = self.mapView.userLocation.coordinate;
    }
    [self.view addSubview:self.mapView];
    
    UILongPressGestureRecognizer *longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPressGesture:)];
    [self.mapView addGestureRecognizer:longPressGesture];
}

-(void)handleLongPressGesture:(UIGestureRecognizer*)sender {
    // This is important if you only want to receive one tap and hold event
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        [self.mapView removeGestureRecognizer:sender];
    }
    else
    {
        CGPoint point = [sender locationInView:self.mapView];
        CLLocationCoordinate2D locCoord = [self.mapView convertPoint:point toCoordinateFromView:self.mapView];
        self.safeHouse.coordinate = CLLocationCoordinate2DMake(locCoord.latitude,locCoord.longitude);
        [self.mapView addAnnotation:self.safeHouse];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    if(self.home == nil){
        CLLocationDistance regionWidth = 3000;
        CLLocationDistance regionHeight = 3000;
        MKCoordinateRegion startRegion =MKCoordinateRegionMakeWithDistance(userLocation.coordinate, regionWidth, regionHeight);
        [self.mapView setRegion:startRegion];
        self.home.coordinate = userLocation.coordinate;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
