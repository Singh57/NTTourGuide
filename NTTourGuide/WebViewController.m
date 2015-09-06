//
//  WebViewController.m
//  Santi
//
//  Created by Sukhvinder on 06/09/2015.
//  Copyright (c) 2015 Santi. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

@synthesize WebView1;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *httpURL = @"http://www.travelnt.com/";
    NSURL *fullURL = [NSURL URLWithString:httpURL];
    NSURLRequest *httpRequest = [NSURLRequest requestWithURL:fullURL];
    [WebView1 loadRequest:httpRequest];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
