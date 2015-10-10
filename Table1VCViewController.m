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
            //https://www.internet-radio.com/stations/top%2040/
            NSString *stream =@"https://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://us1.internet-radio.com:8105/listen.pls&t=.pls";
            //@"http://freezone.iinet.net.au/include/radio/playlists/156.pls";
            //@"http://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://radio.gurbanikirtan247.com:8006/listen.pls?sid=1&t=.pls";
            
            //@"http://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://sgpc.net:8000/listen.pls?sid=1&t=.pls";
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
    
    
         /*  else if (intLabel == 6) {
               label.text = @"Khalsa FM - Edmonton, Canada - VC - LIVE 24/7, Gurbani Kirtan. Katha, Talk Shows, Punjabi Geet ";
               NSString *stream = @" http://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://198.178.123.8:7798/listen.pls&t=.pls";
               NSURL *url = [NSURL URLWithString:stream];
               NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
               [Webview loadRequest:urlrequest];
               
           }
    
           else if (intLabel == 7) {
               label.text = @"24/7 Gurbani, Kirtan, Katha and Sikh Youth Radio  ";
               NSString *stream = @" http://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://198.154.106.102:8506/listen.pls&t=.pls";
               NSURL *url = [NSURL URLWithString:stream];
               NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
               [Webview loadRequest:urlrequest];
               
           }

else if (intLabel == 8) {
    label.text = @"Amrit Saagar Radio - Punjabi Sikh Shabad Gurbani ";
    NSString *stream = @" http://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://knight.wavestreamer.com:2160/listen.pls?sid=1&t=.pls";
    NSURL *url = [NSURL URLWithString:stream];
    NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:urlrequest];
    
}

else if (intLabel == 9) {
    label.text = @"Darbar Sahib Live";
    NSString *stream = @"http://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://sgpc.net:8000/listen.pls?sid=1&t=.pls";
    NSURL *url = [NSURL URLWithString:stream];
    NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:urlrequest];
}
else if (intLabel == 10) {
    label.text = @"Gurudwara.Net Online Gurbani Kirtan ";
    NSString *stream = @"http://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://198.154.106.104:8520/listen.pls&t=.pls";
    NSURL *url = [NSURL URLWithString:stream];
    NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:urlrequest];
}
else if (intLabel == 11) {
    label.text = @"Sikh within Radio ";
    NSString *stream = @"http://www.internet-radio.com/servers/tools/playlistgenerator/?u=http://s6.voscast.com:8020/listen.pls&t=.pls";
    NSURL *url = [NSURL URLWithString:stream];
    NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
    [Webview loadRequest:urlrequest];
}*/

    
       [super viewDidLoad];




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
