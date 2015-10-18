//
//  Table1VCViewController.m
//  Booyah!
//
//  Created by Sukhvinder on 10/03/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import "Table1VCViewController.h"

@interface Table1VCViewController ()

@end

@implementation Table1VCViewController
@synthesize  intLabel, label, Webview;

- (void)viewDidLoad {
        if (intLabel == 0) {
        label.text = @"Classic Rock";
            NSString *stream =@"https://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://us1.internet-radio.com:8105/listen.pls&t=.pls";
         
            NSURL *url = [NSURL URLWithString:stream];
            NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
            [Webview loadRequest:urlrequest];
           
    }
        else if (intLabel == 1) {
            label.text = @"181.FM - Kickin Country - Todays BEST Country!";
            NSString *stream = @"https://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://108.61.73.117:8130/listen.pls&t=.pls";
            NSURL *url = [NSURL URLWithString:stream];
            NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
            [Webview loadRequest:urlrequest];
        }
        else if (intLabel == 2) {
            label.text = @"PARTY VIBE RADIO: Rock + Country ";
            NSString *stream = @"https://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://www.partyviberadio.com:8020/listen.pls?sid=1&t=.pls";
            NSURL *url = [NSURL URLWithString:stream];
            NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
            [Webview loadRequest:urlrequest];
        }
    
   
    
   else if (intLabel == 3) {
       label.text = @"Champion5867Fm - Non Stop Hits From All Eras ";
       NSString *stream = @"https://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://uk3.internet-radio.com:8060/listen.pls&t=.pls";
       NSURL *url = [NSURL URLWithString:stream];
       NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
       [Webview loadRequest:urlrequest];
   }
       else if (intLabel == 4) {
           label.text = @"Country";
           NSString *stream = @"http://freezone.iinet.net.au/include/radio/playlists/59.m3u";
           NSURL *url = [NSURL URLWithString:stream];
           NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
           [Webview loadRequest:urlrequest];
       }
           else if (intLabel == 5) {
               label.text = @"Rock ";
               NSString *stream = @"http://freezone.iinet.net.au/include/radio/playlists/18.pls";
               NSURL *url = [NSURL URLWithString:stream];
               NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
               [Webview loadRequest:urlrequest];
           }
    
       [super viewDidLoad];




}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
