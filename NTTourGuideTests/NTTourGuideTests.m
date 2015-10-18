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
#import "Table2VCViewController.h"
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

- (void)testAsynchronousURLConnection {
    NSURL *URL = [NSURL URLWithString:@"http://www.travelnt.com/"];
    NSString *description = [NSString stringWithFormat:@"GET %@", URL];
    XCTestExpectation *expectation = [self expectationWithDescription:description];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:URL
                                        completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
                                  {
                                      XCTAssertNotNil(data, "data should not be nil");
                                      XCTAssertNil(error, "error should be nil");
                                      
                                      if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
                                          NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
                                          XCTAssertEqual(httpResponse.statusCode, 200, @"HTTP response status code should be 200");
                                          XCTAssertEqualObjects(httpResponse.URL.absoluteString, URL.absoluteString, @"HTTP response URL should be equal to original URL");
                                          XCTAssertEqualObjects(httpResponse.MIMEType, @"text/html", @"HTTP response content type should be text/html");
                                      } else {
                                          XCTFail(@"Response was not NSHTTPURLResponse");
                                      }
                                      
                                      [expectation fulfill];
                                  }];
    
    [task resume];
    
    [self waitForExpectationsWithTimeout:task.originalRequest.timeoutInterval handler:^(NSError *error) {
        if (error != nil) {
            NSLog(@"Error: %@", error.localizedDescription);    
        }
        [task cancel];
    }];
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


- (void)testNotNil2{
    XCTAssertNotNil(@"hello",@"its supposed to be nill");
}

-(void)testnilForTableClass{
    Table2VCViewController *tabl;
    XCTAssertNil(tabl,@"its nill");
    
}

-(void)testtableNotNil{
    Table2VCViewController *tablllle =[[Table2VCViewController alloc]init];
    XCTAssertNotNil(tablllle,@"its not nill though");
}


- (void)testPerformance {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
-(void)testtableNotNil2{
    Table2VCViewController *tablllle =[[Table2VCViewController alloc]init];
    XCTAssertTrue(tablllle,@"its not nill though");

}

@end
