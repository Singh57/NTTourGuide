//
//  Table2VCViewController.m
//  Booyah!
//
//  Created by Sukhvinder on 10/10/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//
#import "Table2VCViewController.h"

@interface Table2VCViewController ()

@end

@implementation Table2VCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *URL = [NSURL URLWithString:[self.url stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    [self.webviewForRSSFeed loadRequest:request];
    [self.webviewForRSSFeed addSubview:ActInd];
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];

}
-(void)loading{
    if (!self.webviewForRSSFeed.loading)
          [ActInd stopAnimating];
    else
          [ActInd startAnimating];
    


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
