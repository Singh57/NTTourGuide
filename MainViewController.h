//
//  MainViewController.h
//  Santi
//
//  Created by Sukhvinder on 06/09/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface MainViewController : UIViewController<UIApplicationDelegate,AVAudioPlayerDelegate>

{
    AVAudioPlayer *audioPLayer1;
}

//@property (strong, nonatomic) IBOutlet UIWebView *fbLikeWebView;

//-(void)embedFBLikeButton;
@property (weak, nonatomic) IBOutlet UIButton *fb;
-(IBAction)fbButtonTap:(id)sender;

@end
