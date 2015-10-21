//
//  NTHighlightCell1.h
//  Booyah!

//  Created by Sukhvinder on 15/09/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import <UIKit/UIKit.h>
#import "clsFeedItem1.h"
@interface NTHighlightCell1 : UICollectionViewCell
{
    IBOutlet UIImageView *imgPicture;
    IBOutlet UITextView *txtText;
    
    
}
-(void)LoadCell:(clsFeedItem1*)Number;

@end
