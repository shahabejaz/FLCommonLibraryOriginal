//
//  NSDictionary+Extensions.m
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

#import "NSDictionary+Extensions.h"

@implementation NSDictionary (Extensions)

#pragma mark - ForKey

- (BOOL)st_boolForKey:(NSString *)key defaultValue:(BOOL)defaultValue
{
    id obj = [self objectForKey:key];
    if (obj && [obj isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)obj boolValue];
    } else {
        return defaultValue;
    }
}

- (BOOL)st_boolForKey:(NSString *)key
{
    return [self st_boolForKey:key defaultValue:NO];
}

- (NSInteger)st_integerForKey:(NSString *)key defaultValue:(NSInteger)defaultValue
{
    id obj = [self objectForKey:key];
    if (obj) {
        if ([obj isKindOfClass:[NSNumber class]]) {
            return [(NSNumber *)obj integerValue];
        } else if ([obj isKindOfClass:[NSString class]]) {
            return [(NSString *)obj integerValue];
        }
    }
    
    return defaultValue;
}

- (NSInteger)st_integerForKey:(NSString *)key
{
    return [self st_integerForKey:key defaultValue:0];
}

- (float)st_floatForKey:(NSString *)key defaultValue:(float)defaultValue
{
    id obj = [self objectForKey:key];
    if (obj) {
        if ([obj isKindOfClass:[NSNumber class]]) {
            return [(NSNumber *)obj floatValue];
        } else if ([obj isKindOfClass:[NSString class]]) {
            return [(NSString *)obj floatValue];
        }
    }
    
    return defaultValue;
}

- (float)st_floatForKey:(NSString *)key
{
    return [self st_floatForKey:key defaultValue:0];
}

- (double)st_doubleForKey:(NSString *)key defaultValue:(double)defaultValue
{
    id obj = [self objectForKey:key];
    if (obj) {
        if ([obj isKindOfClass:[NSNumber class]]) {
            return [(NSNumber *)obj doubleValue];
        } else if ([obj isKindOfClass:[NSString class]]) {
            return [(NSString *)obj doubleValue];
        }
    }
    
    return defaultValue;
}

- (double)st_doubleForKey:(NSString *)key
{
    return [self st_doubleForKey:key defaultValue:0];
}

- (NSString *)st_stringForKey:(NSString *)key defaultValue:(NSString *)defaultValue
{
    id obj = [self objectForKey:key];
    if (obj) {
        if ([obj isKindOfClass:[NSString class]]) {
            return obj;
        } else if ([obj isKindOfClass:[NSNumber class]]) {
            return [(NSNumber *)obj stringValue];
        }
    }
    
    return defaultValue;
}

- (NSString *)st_stringForKey:(NSString *)key
{
    return [self st_stringForKey:key defaultValue:nil];
}

#pragma mark - ForPath

- (NSDictionary *)st_dictionaryForPaths:(NSArray *)paths
{
    if (paths.count == 0) {
        return nil;
    }
    
    NSDictionary *target = self;
    for (int i = 0; i < paths.count - 1; i++) {
        NSString *key = [paths objectAtIndex:i];
        target = [target st_dictionaryForKey:key];
        if (!target) {
            return nil;
        }
    }
    
    return target;
}

- (BOOL)st_boolForPath:(NSString *)path defaultValue:(BOOL)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_boolForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_boolForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (BOOL)st_boolForPath:(NSString *)path
{
    return [self st_boolForPath:path defaultValue:NO];
}

- (NSInteger)st_integerForPath:(NSString *)path defaultValue:(NSInteger)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_integerForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_integerForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSInteger)st_integerForPath:(NSString *)path
{
    return [self st_integerForPath:path defaultValue:0];
}

- (float)st_floatForPath:(NSString *)path
{
    return [self st_floatForPath:path defaultValue:0];
}

- (float)st_floatForPath:(NSString *)path defaultValue:(float)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_floatForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_floatForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (double)st_doubleForPath:(NSString *)path
{
    return [self st_doubleForPath:path defaultValue:0];
}

- (double)st_doubleForPath:(NSString *)path defaultValue:(double)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_doubleForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_doubleForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSObject *)st_objectForPath:(NSString *)path defaultValue:(NSObject *)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_objectForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_objectForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSObject *)st_objectForPath:(NSString *)path
{
    return [self st_objectForPath:path defaultValue:nil];
}

- (NSString *)st_stringForPath:(NSString *)path defaultValue:(NSString *)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_stringForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_stringForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSString *)st_stringForPath:(NSString *)path
{
    return [self st_stringForPath:path defaultValue:nil];
}

- (NSArray *)st_arrayForPath:(NSString *)path defaultValue:(NSArray *)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_arrayForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_arrayForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSArray *)st_arrayForPath:(NSString *)path
{
    return [self st_arrayForPath:path defaultValue:nil];
}

- (NSDictionary *)st_dictionaryForPath:(NSString *)path defaultValue:(NSDictionary *)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_dictionaryForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_dictionaryForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSDictionary *)st_dictionaryForPath:(NSString *)path
{
    return [self st_dictionaryForPath:path defaultValue:nil];
}

- (NSDate *)st_dateForPath:(NSString *)path defaultValue:(NSDate *)defaultValue {
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_dateForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_dateForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSDate *)st_dateForPath:(NSString *)path {
    return [self st_dateForPath:path defaultValue:nil];
}

- (NSData *)st_dataForPath:(NSString *)path defaultValue:(NSData *)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_dataForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_dataForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSData *)st_dataForPath:(NSString *)path
{
    return [self st_dataForPath:path defaultValue:nil];
}

- (NSURL *)st_URLForPath:(NSString *)path defaultValue:(NSURL *)defaultValue
{
    NSArray *paths = [path componentsSeparatedByString:@"."];
    if (paths.count == 1) {
        return [self st_URLForKey:paths.lastObject];
    } else if (paths.count >= 2) {
        NSDictionary *obj = [self st_dictionaryForPaths:paths];
        return [obj st_URLForKey:paths.lastObject];
    }
    
    return defaultValue;
}

- (NSURL *)st_URLForPath:(NSString *)path
{
    return [self st_URLForPath:path defaultValue:nil];
}

@end
