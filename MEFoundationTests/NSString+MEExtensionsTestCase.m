//
//  NSString+MEExtensionsTestCase.m
//  MEFoundation
//
//  Created by William Towe on 3/14/14.
//  Copyright (c) 2014 Maestro, LLC. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
