//
//  contactusViewControlle.m
//  Booyah
//
//  Created by Sukhvinder on 11/10/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import "contactusViewControlle.h"

@interface contactusViewControlle ()

@end

@implementation contactusViewControlle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)emailButton:(id)sender {
    MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc]init] ;
    [mailController setMailComposeDelegate:self];
    NSString *email = @"rsumra57@gmail.com";
    NSArray *emailArray= [[NSArray alloc]initWithObjects:email , nil];
    NSString *message = [[self emailText]text];
    [mailController setMessageBody:message isHTML:NO];
    [mailController setToRecipients:emailArray];
    [self presentViewController:mailController animated:YES completion:nil];
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self emailText]resignFirstResponder];
}



@end
