//
//  NSArray_MEFoundationTestCase.m
//  MEFoundation
//
//  Created by Norm Barnard on 7/30/14.
//  Copyright (c) 2014 Maestro, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSArray+MEExtensions.h"

@interface NSArray_MEFoundationTestCase : XCTestCase

@end

@implementation NSArray_MEFoundationTestCase

- (void)testME_arrayByRemovingObject
{
    NSArray *stringArray = @[@"aaab", @"bbb", @"cccc", @"dddd", @"eeeeee", @"fffff"];
    NSArray *numberArray = @[@43, @65, @765, @87, @980, @909];
    NSArray *emptyArray = @[];
    
    NSArray *stringResults = [stringArray ME_arrayByRemovingObject:@"dddd"];
    XCTAssertTrue(stringResults.count == stringArray.count-1, @"stringResults is not the expected size: %@ vs %@", @(stringResults.count), @(stringArray.count-1));
    [stringResults enumerateObjectsUsingBlock:^(NSString *s, NSUInteger idx, BOOL *stop) {
        XCTAssertFalse([s isEqualToString:@"dddd"], @"stringResults contains object that should have been removed %@.", s);
    }];
    
    NSArray *numberResults = [numberArray ME_arrayByRemovingObject:@65];
    XCTAssertTrue(numberResults.count == numberArray.count-1, @"numberResults is not the expected size: %@ vs %@", @(numberResults.count), @(numberArray.count-1));
    [numberResults enumerateObjectsUsingBlock:^(NSNumber *n, NSUInteger idx, BOOL *stop) {
        XCTAssertFalse([n isEqualToNumber:@65], @"numberResults contains object that should have been removed %@.", n);
    }];
    
    NSArray *emptyResults = [emptyArray ME_arrayByRemovingObject:@"does not exists"];
    XCTAssertTrue(emptyResults.count == 0, @"emtpyResults is not the expected size: %@ vs 0", @(emptyResults.count));
}

@end
