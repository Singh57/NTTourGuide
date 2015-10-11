//
//  Table2VCViewController.h
//  Booyah!
//
//  Created by Sukhvinder on 10/10/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Table2VCViewController : UIViewController
{

    IBOutlet UIActivityIndicatorView *ActInd;
    NSTimer *timer;
    
}
@property (copy,nonatomic)NSString *url;
@property(strong,nonatomic)IBOutlet UIWebView *webview;

@end
