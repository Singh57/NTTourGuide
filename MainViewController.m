//
//  MainViewController.m
//  Booyah!
//
//  Created by Sukhvinder on 06/09/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController




- (void)viewDidLoad {
    [super viewDidLoad];

}



- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear: animated];
    
    NSString *music = [[NSBundle mainBundle] pathForResource:@"Rmf" ofType:@"mp3"];
    audioPLayer1=[[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:music] error:NULL];
    audioPLayer1.delegate=self;
    audioPLayer1.numberOfLoops=-1;
    [audioPLayer1 play];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear: animated];
    
    audioPLayer1.delegate = nil;
    [audioPLayer1 stop];
    audioPLayer1 = nil;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
