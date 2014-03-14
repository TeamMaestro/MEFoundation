//
//  NSObject+MELocalizationExtensions.h
//  MEFrameworks
//
//  Created by William Towe on 8/13/13.
//  Copyright (c) 2013 Maestro. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import <Foundation/Foundation.h>

#define MELocalizedString(key,comment) \
    [[NSBundle mainBundle] ME_localizedStringForKey:(key) value:@"" table:nil]

#define MELocalizedStringFromTable(key,tableName,comment) \
    [[NSBundle mainBundle] ME_localizedStringForKey:(key) value:@"" table:(tableName)]

#define MELocalizedStringFromTableInBundle(key,tableName,bundle,comment) \
    [bundle ME_localizedStringForKey:(key) value:@"" table:(tableName)]

#define MELocalizedURLForResourceWithExtension(resource,extension) \
    [[NSBundle mainBundle] ME_localizedURLForResource:(resource) withExtension:(extension) subdirectory:@"" localization:[NSObject ME_selectedLocalization]]

#define MELocalizedURLForResourceWithExtensionInBundle(resource,extension,bundle) \
    [bundle ME_localizedURLForResource:(resource) withExtension:(extension) subdirectory:@"" localization:[NSObject ME_selectedLocalization]]

extern NSString *const MELocalizationUserDefaultsKeySelectedLocalization;

extern NSString *const MELocalizationNotificationSelectedLocalizationDidChange;
extern NSString *const MELocalizationUserInfoKeySelectedLocalization;
extern NSString *const MELocalizationUserInfoKeySelectedLocalizationDisplayName;

@interface NSObject (MELocalizationExtensions)

+ (NSString *)ME_defaultLocalization;

+ (NSString *)ME_selectedLocalization;
+ (void)ME_setSelectedLocalization:(NSString *)selectedLocalization;

+ (NSString *)ME_displayNameForSelectedLocalization;

@end

@interface NSBundle (MELocalizationExtensions)

- (NSString *)ME_localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName;

- (NSURL *)ME_localizedURLForResource:(NSString *)name withExtension:(NSString *)extension subdirectory:(NSString *)subpath localization:(NSString *)localizationName;

@end
