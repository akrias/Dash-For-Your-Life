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
        self.hasSetCenter = NO;
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
    self.mapView.showsUserLocation = YES;
    
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
        // Here we get the CGPoint for the touch and convert it to latitude and longitude coordinates to display on the map
        CGPoint point = [sender locationInView:self.mapView];
        CLLocationCoordinate2D locCoord = [self.mapView convertPoint:point toCoordinateFromView:self.mapView];
        // Then all you have to do is create the annotation and add it to the map
        Checkpoint *dropPin = [[Checkpoint alloc] init];
        dropPin.coordinate = CLLocationCoordinate2DMake(locCoord.latitude,locCoord.longitude);
        [self.mapView addAnnotation:dropPin];
    }
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    if(!self.hasSetCenter){
        [mapView setCenterCoordinate:userLocation.coordinate animated:NO];
        self.safeHouse = [[Checkpoint alloc] init];
        self.safeHouse.coordinate = userLocation.coordinate;
        [self.mapView addAnnotation:self.safeHouse];
        [[mapView viewForAnnotation:self.safeHouse] setDraggable:YES];
        self.hasSetCenter = YES;
    }
}
-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view didChangeDragState:(MKAnnotationViewDragState)newState fromOldState:(MKAnnotationViewDragState)oldState
{
    if (newState == MKAnnotationViewDragStateEnding)
    {
        CLLocationCoordinate2D droppedAt = view.annotation.coordinate;
        NSLog(@"dropped at %f,%f", droppedAt.latitude, droppedAt.longitude);
    }

    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
