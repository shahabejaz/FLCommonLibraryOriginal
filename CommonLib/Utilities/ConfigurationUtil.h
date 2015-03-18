//
//  ConfigurationUtil.h
//  SCBCommon
//
//  Created by Greg Martin on 1/2/11.
//  Copyright 2011 Standard Chartered Bank. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConfigurationUtil : NSObject
{
}

+ (id)objectForKey:(NSString *)key;

+ (NSString *)applicationShortVersionString;
+ (NSString *)applicationDisplayName;

@end
