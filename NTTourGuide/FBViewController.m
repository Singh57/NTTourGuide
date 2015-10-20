//
//  FBViewController.m
//  NTTourGuide
//
//  Created by Sukhvinder on 20/10/2015.
//  Copyright © 2015 Booyah!. All rights reserved.
//

#import "FBViewController.h"

@interface FBViewController ()

@end

@implementation FBViewController
@synthesize FBView;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *httpURL = @"https://www.facebook.com/Tourism-NT-276124839224379/";
    NSURL *fullURL = [NSURL URLWithString:httpURL];
    NSURLRequest *httpRequest = [NSURLRequest requestWithURL:fullURL];
    [FBView loadRequest:httpRequest];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end