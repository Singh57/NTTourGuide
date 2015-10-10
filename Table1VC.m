//
//  Table1VC.m
//  Booyah!
//
//  Created by Sukhvinder on 10/10/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import "Table1VC.h"
#import "Table1VCViewController.h"
@interface Table1VC ()

@end

@implementation Table1VC
@synthesize  array;

- (void)viewDidLoad {
    
    array = @[@"Classic Rock",@"181.FM - Kickin Country - Todays BEST Country!",@"PARTY VIBE RADIO: Rock + Country ",@"Champion5867Fm - Non Stop Hits From All Eras ",@"Country 2",@"Rock"];
    
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

   
    return [array count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentfier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentfier forIndexPath:indexPath];
    
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
     cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
     {
         NSIndexPath *path = [self.tableView indexPathForSelectedRow];
         Table1VCViewController *vc;
         vc = [segue destinationViewController];
         //Require changes here
         vc.intLabel = path.row;
     }



@end
