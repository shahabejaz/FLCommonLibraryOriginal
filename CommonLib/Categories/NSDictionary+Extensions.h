//
//  NSDictionary+Extensions.h
//
//  Created by EIMEI on 2013/05/06.
//  Copyright (c) 2013 stack3.net (http://stack3.net/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <Foundation/Foundation.h>

/*!
 @category NSDate(Extensions)
 @discussion This is a category of NSDate that contains many useful methods related to date.
 */
@interface NSDictionary (Extensions)

#pragma mark - ForKey

- (BOOL)st_boolForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (BOOL)st_boolForKey:(NSString *)key;
- (NSInteger)st_integerForKey:(NSString *)key defaultValue:(NSInteger)defaultValue;
- (NSInteger)st_integerForKey:(NSString *)key;
- (float)st_floatForKey:(NSString *)key defaultValue:(float)defaultValue;
- (float)st_floatForKey:(NSString *)key;
- (double)st_doubleForKey:(NSString *)key defaultValue:(double)defaultValue;
- (double)st_doubleForKey:(NSString *)key;
- (NSTimeInterval)st_timeIntervalForKey:(NSString *)key defaultValue:(NSTimeInterval)defaultValue;
- (NSTimeInterval)st_timeIntervalForKey:(NSString *)key;
- (id)st_objectForKey:(NSString *)key defaultValue:(id)defaultValue;
- (id)st_objectForKey:(NSString *)key;
- (NSString *)st_stringForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)st_stringForKey:(NSString *)key;
- (NSArray *)st_arrayForKey:(NSString *)key defaultValue:(NSArray *)defaultValue;
- (NSArray *)st_arrayForKey:(NSString *)key;
- (NSDictionary *)st_dictionaryForKey:(NSString *)key defaultValue:(NSDictionary *)defaultValue;
- (NSDictionary *)st_dictionaryForKey:(NSString *)key;
- (NSDate *)st_dateForKey:(NSString *)key defaultValue:(NSDate *)defaultValue;
- (NSDate *)st_dateForKey:(NSString *)key;
- (NSData *)st_dataForKey:(NSString *)key defaultValue:(NSData *)defaultValue;
- (NSData *)st_dataForKey:(NSString *)key;
- (NSURL *)st_URLForKey:(NSString *)key defaultValue:(NSURL *)defaultValue;
- (NSURL *)st_URLForKey:(NSString *)key;

#pragma mark - ForPath

- (BOOL)st_boolForPath:(NSString *)path defaultValue:(BOOL)defaultValue;
- (BOOL)st_boolForPath:(NSString *)path;
- (NSInteger)st_integerForPath:(NSString *)path defaultValue:(NSInteger)defaultValue;
- (NSInteger)st_integerForPath:(NSString *)path;
- (float)st_floatForPath:(NSString *)path defaultValue:(float)defaultValue;
- (float)st_floatForPath:(NSString *)path;
- (double)st_doubleForPath:(NSString *)path defaultValue:(double)defaultValue;
- (double)st_doubleForPath:(NSString *)path;
- (NSObject *)st_objectForPath:(NSString *)path defaultValue:(NSObject *)defaultValue;
- (NSObject *)st_objectForPath:(NSString *)path;
- (NSString *)st_stringForPath:(NSString *)path defaultValue:(NSString *)defaultValue;
- (NSString *)st_stringForPath:(NSString *)path;
- (NSArray *)st_arrayForPath:(NSString *)path defaultValue:(NSArray *)defaultValue;
- (NSArray *)st_arrayForPath:(NSString *)path;
- (NSDictionary *)st_dictionaryForPath:(NSString *)path defaultValue:(NSDictionary *)defaultValue;
- (NSDictionary *)st_dictionaryForPath:(NSString *)path;
- (NSDate *)st_dateForPath:(NSString *)path defaultValue:(NSDate *)defaultValue;
- (NSDate *)st_dateForPath:(NSString *)path;
- (NSData *)st_dataForPath:(NSString *)path defaultValue:(NSData *)defaultValue;
- (NSData *)st_dataForPath:(NSString *)path;
- (NSURL *)st_URLForPath:(NSString *)key defaultValue:(NSURL *)defaultValue;
- (NSURL *)st_URLForPath:(NSString *)key;

@end
