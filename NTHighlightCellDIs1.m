//
//  NTHighlightCellDIs1.m
//  Booyah!
//
//  Created by Sukhvinder on 15/09/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import "NTHighlightCellDIs1.h"
#import "NTHighlightCell1.h"
@interface NTHighlightCellDIs1 ()

@end

@implementation NTHighlightCellDIs1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Items = [[NSMutableArray alloc]init];
    [ItemsTable setDataSource:self];
    [ItemsTable setDelegate:self];
    
    
    clsFeedItem1 *Item1,*Item2 = [[clsFeedItem1 alloc]init];
    [Item1 setImagePath:@"darwin1.jpg" ],[Item2 setImagePath:@"kakadu.jpg"];
    [Item1 setText:@ "Sail across the harbour from Darwin to the Tiwi Islands, glide across wetlands and spot local wildlife, or cool off under a waterfall in Litchfield National Park, you'll be spoiled for choice in this very special city. "],[Item2 setText:@ "Cascading waterfalls, rugged escarpments, aboriginal rock art, giant crocodiles and exotic bird life. Kakadu National Park will change how you see the world. Experience the magic of this ancient land which is only a few hours from Darwin." ];
 

    

    
    
    
    clsFeedItem1 *Item3 = [[clsFeedItem1 alloc]init];
    [Item3 setText:@"Arnhem Land is one of the Top End's most spectacular natural destinations. Its scenery is beautiful and diverse, including rugged coastlines, remote islands, rivers teeming with fish, lush rainforest, towering escarpments and savannah woodland."];
    [Item3 setImagePath:@"arnhem1.jpg"];
    
    clsFeedItem1 *Item4 = [[clsFeedItem1 alloc]init];
    [Item4 setText:@"Come to where the outback meets the tropics and discover a region full of gorges and misty waterfalls, thermal springs and ancient cultures. Perfect for families and solo travelers alike, you’ll be spoilt for choice from driving, fishing, camping, kayaking and trekking."];
    [Item4 setImagePath:@"Katherine.jpg"];
    
    clsFeedItem1 *Item5 = [[clsFeedItem1 alloc]init];
    [Item5 setText:@"Take a trip to the real Australia, a vast land of brilliant blue skies and boundless horizons broken only by kangaroos darting across the highway, soaring eagles, remote pubs, ancient rock art and outback characters."];
     [Item5 setImagePath:@"tenantcreek1.jpg"];
    
    /*clsFeedItem1 *Item6 = [[clsFeedItem1 alloc]init];
    [Item6 setText:@"Take a trip to the real Australia, a vast land of brilliant blue skies and boundless horizons broken only by kangaroos darting across the highway, soaring eagles, remote pubs, ancient rock art and outback characters."];
    [Item6 setImagePath:@"Katherine.jpg"];*/
    
    
    
    
    [Items addObject:Item1];
    [Items addObject:Item2];
    [Items addObject:Item3];
    [Items addObject:Item4];
    [Items addObject:Item5];
   // [Items addObject:Item6];
   
    
    [ItemsTable reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return  Items.count;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    clsFeedItem1 *buf = (clsFeedItem1*)Items[indexPath.row ];
    
    
    NTHighlightCell1 *cell = (NTHighlightCell1*)[collectionView dequeueReusableCellWithReuseIdentifier:@"NTHighlightCell1" forIndexPath:indexPath];
    
    [cell LoadCell:buf];
    return  cell;
}

@end
