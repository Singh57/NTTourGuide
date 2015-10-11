//
//  MapViewController.h
//  NTTourGuide
//
//  Created by Sukhvinder on 11/10/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

//#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface MapViewController : UIViewController

 {
    
    MKMapView *mapview;
    
}

@property (nonatomic, retain) IBOutlet MKMapView *mapview;

-(IBAction)setMap:(id)sender;
-(IBAction)GetLocation:(id)sender;
-(IBAction)Direction:(id)sender;
@end
