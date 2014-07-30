//
//  NSSet_MEFoundationTestCase.m
//  MEFoundation
//
//  Created by Norm Barnard on 7/30/14.
//  Copyright (c) 2014 Maestro, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSSet+MEExtensions.h"
@interface NSSet_MEFoundationTestCase : XCTestCase

@end

@implementation NSSet_MEFoundationTestCase


- (void)testME_setByRemovingObject
{

    NSSet *stringSet = [NSSet setWithArray:@[@"aaab", @"bbb", @"cccc", @"dddd", @"eeeeee", @"fffff"]];
    NSSet *numberSet = [NSSet setWithArray:@[@43, @65, @765, @87, @980, @909]];
    NSSet *emptySet = [NSSet set];
    
    NSSet *stringResults = [stringSet ME_setByRemovingObject:@"dddd"];
    XCTAssertTrue(stringResults.count == stringSet.count-1, @"stringResults is not the expected size: %@ vs %@", @(stringResults.count), @(stringSet.count-1));
    [stringResults enumerateObjectsUsingBlock:^(NSString *s, BOOL *stop) {
        XCTAssertFalse([s isEqualToString:@"dddd"], @"stringResults contains object that should have been removed %@.", s);
    }];
    
    NSSet *numberResults = [numberSet ME_setByRemovingObject:@65];
    XCTAssertTrue(numberResults.count == numberSet.count-1, @"numberResults is not the expected size: %@ vs %@", @(numberResults.count), @(numberSet.count-1));
    [numberResults enumerateObjectsUsingBlock:^(NSNumber *n, BOOL *stop) {
        XCTAssertFalse([n isEqualToNumber:@65], @"numberResults contains object that should have been removed %@.", n);
    }];
    
    NSSet *emptyResults = [emptySet ME_setByRemovingObject:@"does not exists"];
    XCTAssertTrue(emptyResults.count == 0, @"emtpyResults is not the expected size: %@ vs 0", @(emptyResults.count));

}

@end
