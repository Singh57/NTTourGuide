//
//  contactusViewControlle.h
//  Booyah
//
//  Created by Sukhvinder on 11/10/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface contactusViewControlle : UIViewController<MFMailComposeViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextView *emailText;
- (IBAction)emailButton:(id)sender;
//-(IBAction)ReturnKeyButton:(id)sender;

@end


