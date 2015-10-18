//
//  NTHighlightCell1.m
//  Booyah!
//
//  Created by Sukhvinder on 15/09/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import "NTHighlightCell1.h"

@implementation NTHighlightCell1

-(void)LoadCell:(clsFeedItem1*)FeedItem{
    [txtText setText:FeedItem.Text];
    [imgPicture setImage:[UIImage imageNamed:FeedItem.ImagePath]];
    
}

@end