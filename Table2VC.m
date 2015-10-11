//
//  Table2VC.m
//  Booyah!
//
//  Created by Sukhvinder on 10/10/2015.
//  Copyright (c) 2015 Booyah! All rights reserved.
//

#import "Table2VC.h"
#import "Table2VCViewController.h"

@interface Table2VC (){
    NSXMLParser *parser;
    NSMutableArray *feeds;
    NSMutableDictionary *item;
    NSMutableString *title;
    NSMutableString *link;
    NSString *element;
}

@end

@implementation Table2VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    feeds = [[NSMutableArray alloc]init];
    NSURL *url =[NSURL URLWithString:@"http://www.abc.net.au/news/feed/46182/rss.xml"];
    //@"http://www.abc.net.au/radionational/feed/2887888/rss.xml"];
                 //:@"http://splash.abc.net.au/xml/splash-rss-feed.xml"];
                 //@"http://www.abc.net.au/sport/syndicate/sport_all.xml"];
                 //@"http://www.abc.net.au/ra/rss/asiapacific.rss"];
                 //@"http://www.sikhnet.com/sikhnet/news.nsf/sikhnetnews.rss"];
                 //@"http://www.bbc.co.uk/radio1/rss/rss_radio1.xml"];
                 //@"http://feeds.blogstreet.com/pub/97.rss"  ];        //@"http://www.sikhnet.com/sikhnet/news.nsf/sikhnetnews.rss"];
    parser = [[NSXMLParser alloc]initWithContentsOfURL:url];
    [parser setDelegate:self];
    [parser setShouldResolveExternalEntities:NO];
    [parser parse];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return feeds.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = [[feeds objectAtIndex:indexPath.row] objectForKey:@"title"];
    return cell;
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    element = elementName;
    if ([element isEqualToString:@"item"])
    {
        item = [[NSMutableDictionary alloc] init];
        title = [[NSMutableString alloc] init];
        link = [[NSMutableString alloc] init];
    }
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"item"]) {
        
        [item setObject:title forKey:@"title"];
        [item setObject:link forKey:@"link"];
        [feeds addObject:[item copy]];
    }
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if ([element isEqualToString:@"title"]) {
        [title appendString:string];
    }else if ([element isEqualToString:@"link"]){
        [link appendString:string];
    }
}

-(void)parserDidEndDocument:(NSXMLParser *)parser{
    [self.tableView reloadData];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *string = [feeds[indexPath.row] objectForKey:@"link"];
        [[segue destinationViewController] setUrl:string];
    }
}





@end
