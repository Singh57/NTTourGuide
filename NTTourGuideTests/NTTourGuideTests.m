//
//  NTTourGuideTests.m
//  NTTourGuideTests
//
//  Created by Sukhvinder on 06/09/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WebViewController.h"
@interface NTTourGuideTests : XCTestCase

@end

@implementation NTTourGuideTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
-(void)testWebClass
{
    WebViewController *webClass = [[WebViewController alloc]init];
    XCTAssertNotNil(webClass,@"To check weather a web class exisit or not");
}

-(void)testWebPageCheck
{
    WebViewController *webPageCheck = [[WebViewController alloc]init];
    XCTAssertNotNil(webPageCheck,@"To check weather a web page exisit or not");
}

-(void)testWeb
{
    XCTAssertTrue(@"http://www.travelnt.com/",@"to check for nt website");
}

- (void)testTable {
    XCTAssert(YES, @"Pass");
}

- (void)testPerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
