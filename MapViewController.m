//
//  MapViewController.m
//  NTTourGuide
//
//  Created by Sukhvinder on 11/10/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import "MapViewController.h"
#import "MapAnnotation.h"
@interface MapViewController ()

@end

@implementation MapViewController

@synthesize mapview;
- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    MKCoordinateRegion region = { {0.0, 0.0}, {0.0,0.0}};
    
    //getting coordiantion from google map for darwin info. center
    region.center.latitude = -12.4638909;
    region.center.longitude = 130.8391971;
    
    //setting initial zoom, when opening a map
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    
    [mapview setRegion:region animated:YES];
    
    
    //making an object of mapannotation class and allocating it memory, then assigning it description
    MapAnnotation *ann = [[MapAnnotation alloc] init];
    
    ann.title = @"Tourist Info. Center";
    
    ann.subtitle = @"Darwin";
    
    ann.coordinate = region.center;
 
    
    [mapview addAnnotation:ann];
    
}

-(IBAction)setMap:(id)sender {
    
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
            
        case 0:
            
            mapview.mapType = MKMapTypeStandard;
            
            break;
            
        case 1:
            
            mapview.mapType = MKMapTypeSatellite;
            
            break;
            
        case 2:
            
            mapview.mapType = MKMapTypeHybrid;
            
            break;
            
        default:
            
            break;
            
    }
}
-(IBAction)GetLocation:(id)sender {
    
    mapview.showsUserLocation = YES;
    
}
-(IBAction)Direction:(id)sender {
    
    NSString *urlString = @"http://maps.apple.com/maps?daddr=-12.4638909,130.8391971";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
    
}

@end
