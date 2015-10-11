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

//@synthesize fbLikeWebView = _fbLikeWebView;
@synthesize fb;


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

//-(void)embedFBLikeButton{

//}
-(IBAction)fbButtonTap:(id)sender {
    NSURL *fbURL = [[NSURL alloc] initWithString:@"https://www.facebook.com/SikhsInDarwin?ref_type=bookmark"];
    // check if app is installed
    if ( ! [[UIApplication sharedApplication] canOpenURL:fbURL] ) {
        // if we get here, we can't open the FB app.
        fbURL = [NSURL URLWithString:@"https://www.facebook.com"]; // direct URL on FB website to open in safari
    }
    
    [[UIApplication sharedApplication] openURL:fbURL];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
