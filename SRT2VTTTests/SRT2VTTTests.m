//
//  SRT2VTTTests.m
//  SRT2VTTTests
//
//  Created by Aggelos Papageorgiou on 03/08/16.
//  Copyright © 2016 Aggelos Papageorgiou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <SRT2VTT/SRT.h>
@interface SRT2VTTTests : XCTestCase

@end

@implementation SRT2VTTTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testExample {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Sub conversion"];
    NSString* fileURL = [[NSBundle bundleForClass:[SRT2VTTTests  class]]pathForResource:@"Batman V Superman Dawn Of Justice (2016) [1080p] [YTS.AG]" ofType:@"srt"];
    NSURL* VTTFile = [[SRT sharedConverter] convertFileToVTT:[NSURL fileURLWithPath:fileURL]];
    XCTAssertNotEqual([VTTFile absoluteString],@"/");
    NSLog(@"vtt file path %@",[VTTFile absoluteString]);
    [expectation fulfill];
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [self waitForExpectationsWithTimeout:60.0 * 5 handler:nil];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
