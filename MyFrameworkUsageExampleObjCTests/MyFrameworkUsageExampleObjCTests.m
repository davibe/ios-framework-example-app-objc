//
//  MyFrameworkUsageExampleObjCTests.m
//  MyFrameworkUsageExampleObjCTests
//
//  Created by Davide Bertola on 03/04/2017.
//  Copyright © 2017 Davide Bertola. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ViewController.h"


@import MyFramework;

@interface MyFrameworkUsageExampleObjCTests : XCTestCase

@property ViewController* vc;

@end


@implementation MyFrameworkUsageExampleObjCTests

- (void)setUp {
    [super setUp];
    self.vc = [[ViewController alloc] init];
    [self.vc viewDidLoad];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    XCTAssert(self.vc != nil);
    MyFramework* framework = self.vc.framework;
    BOOL result = [framework doSomething];
    XCTAssert(framework.optionalString != nil);
    XCTAssert(result);
    
    NSString *resourceContent = [framework doReadResource];
    XCTAssert(resourceContent != nil);
    
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
