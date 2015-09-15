//
//  NTHighlightCellDIs1.h
//  Booyah!
//
//  Created by Sukhvinder on 15/09/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import <UIKit/UIKit.h>
#import "clsFeedItem1.h"

@interface NTHighlightCellDIs1 : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>



{
    NSMutableArray *Items;
    IBOutlet UICollectionView *ItemsTable;
}
@end
