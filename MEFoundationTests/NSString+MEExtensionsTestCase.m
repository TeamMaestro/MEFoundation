//
//  NSString+MEExtensionsTestCase.m
//  MEFoundation
//
//  Created by William Towe on 3/14/14.
//  Copyright (c) 2014 Maestro, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+MEExtensions.h"

@interface NSString_MEExtensionsTestCase : XCTestCase

@end

@implementation NSString_MEExtensionsTestCase

- (void)testME_stringByReplacingNewlinesWithString {
    XCTAssertEqualObjects([@"a\nc" ME_stringByReplacingNewlinesWithString:@""], @"ac");
    XCTAssertEqualObjects([@"a\nc" ME_stringByReplacingNewlinesWithString:@"b"], @"abc");
}
- (void)testME_reverseString {
    XCTAssertEqualObjects([@"abc" ME_reverseString], @"cba");
}
- (void)testME_URLEncodedString {
    XCTAssertEqualObjects([@"a c" ME_URLEncodedString], @"a%20c");
}
- (void)testME_valueFromHexadecimalString {
    XCTAssertTrue([@"a" ME_valueFromHexadecimalString] == 10);
}
- (void)testME_valueFromBinaryString {
    XCTAssertTrue([@"10" ME_valueFromBinaryString] == 2);
}
- (void)testME_valueFromString {
    XCTAssertTrue([@"10" ME_valueFromString] == 10);
}
- (void)testME_stringByRemovingInvalidHexadecimalDigits {
    XCTAssertEqualObjects([@"ag" ME_stringByRemovingInvalidHexadecimalDigits], @"a");
}
- (void)testME_stringByRemovingInvalidBinaryDigits {
    XCTAssertEqualObjects([@"12" ME_stringByRemovingInvalidBinaryDigits], @"1");
}
- (void)testME_stringByRemovingInvalidDigits {
    XCTAssertEqualObjects([@"1a" ME_stringByRemovingInvalidDigits], @"1");
}

@end
