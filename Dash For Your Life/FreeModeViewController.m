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
        self.items = [[NSArray alloc] init];
        self.profile = [PlayerProfile getProfile];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.goal = [[CLLocation alloc] initWithLatitude:self.safehouse.coordinate.latitude longitude:self.safehouse.coordinate.longitude];
    self.player = [[Player alloc] initWithCoordinate:self.home.coordinate];
    self.currZombie = [[Zombie alloc] initWithLevel:floor(self.profile.derivedMileTime / 60000) - 5 coordinate:self.player.coordinate];
    self.remainingDistanceUntilZombie = [Zombie getDistanceUntilNextZombie];
    self.remainingDistanceUntilObstacle = [Obstacle getDistanceUntilNextObstacle];
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
    MKCoordinateSpan boundsSpan = MKCoordinateSpanMake(maxLat - minLat + .01, maxLng - minLng + .01);
    MKCoordinateRegion boundsRegion = MKCoordinateRegionMake(boundsCenter, boundsSpan);
    self.mapView.zoomEnabled = NO;
    self.mapView.scrollEnabled = NO;
    self.mapView.showsUserLocation = YES;
    [self.mapView setRegion:boundsRegion];
    [self.mapView addAnnotations:@[self.home, self.safehouse]];
    [self.view addSubview:self.mapView];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [PlayerProfile saveProfile:self.profile];
}
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationDistance deltaPos = [[[CLLocation alloc] initWithLatitude:self.player.coordinate.latitude longitude:self.player.coordinate.longitude ] distanceFromLocation:userLocation.location];
    //update zombie
    if([self.currZombie didZombieCatchPlayerAtLocation:userLocation.location])
    {
        self.player.hitPoints = self.player.hitPoints - 40;
        if(self.player.hitPoints <= 0){
            //loss
        }
    }
    //test for obstacle spawn
    self.remainingDistanceUntilObstacle -= deltaPos;
    if(self.remainingDistanceUntilObstacle <= 0)
    {
        double deltaLat;
        double deltaLng;
        if(userLocation.heading.trueHeading < 22.5)
        {
            deltaLat = 0;
            deltaLng = .001;
        }
        else if(userLocation.heading.trueHeading < 67.5)
        {
            deltaLat =.0002;
            deltaLng = .0002;
        }
        else if(userLocation.heading.trueHeading < 112.5)
        {
            deltaLat = 0;
            deltaLng = .001;
        }
        else if(userLocation.heading.trueHeading < 157.5)
        {
            deltaLat = -.0002;
            deltaLng = .0002;
        }
        else if(userLocation.heading.trueHeading < 202.5)
        {
            deltaLat = -.001;
            deltaLng = 0;
        }
        else if(userLocation.heading.trueHeading < 247.5)
        {
            deltaLat = -.0002;
            deltaLng = -.0002;
        }
        else if(userLocation.heading.trueHeading < 292.5)
        {
            deltaLat = 0;
            deltaLng = -.001;
        }
        else if(userLocation.heading.trueHeading < 337.5)
        {
            deltaLat = .0002;
            deltaLng = -.0002;
        }
        else
        {
            deltaLat = 0;
            deltaLng = .0001;
        }
        
        self.currObstacle = [[Obstacle alloc] initWithLatitude:userLocation.coordinate.latitude + deltaLat longitude:userLocation.coordinate.longitude + deltaLng];
        [self.currObstacle setRandomExercise];
        self.remainingDistanceUntilObstacle = [Obstacle getDistanceUntilNextObstacle];
    }
    //test for zombie spawn
    self.remainingDistanceUntilZombie -= deltaPos;
    if(self.remainingDistanceUntilZombie <= 0)
    {
        self.remainingDistanceUntilZombie = [Zombie getDistanceUntilNextZombie];
    }
    //test for item proximity
    //test for goal proximity
    if([userLocation.location distanceFromLocation:self.goal] < 3)
    {
        if(self.goal.coordinate.longitude == self.safehouse.coordinate.longitude && self.goal.coordinate.latitude == self.safehouse.coordinate.latitude){
            self.goal = [[CLLocation alloc] initWithLatitude:self.home.coordinate.latitude longitude:self.home.coordinate.longitude];
            //reset game state
        }
        else{
            //victory!
        }
    }
    //test for boundary proximity
    
    self.player.coordinate = userLocation.coordinate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
