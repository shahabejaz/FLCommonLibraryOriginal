//
//  ConfigurationUtil.m
//  SCBCommon
//
//  Created by Greg Martin on 1/2/11.
//  Copyright 2011 Standard Chartered Bank. All rights reserved.
//

#import "ConfigurationUtil.h"


@implementation ConfigurationUtil

//
// Get value from key in Info.plist
//
+ (id)objectForKey:(NSString *)key
{
	id value = nil;
	
	NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
	
	// Check if its a system property 
	if ([key rangeOfString:@"CFBundle"].location == 0)
	{
		return [infoDict valueForKey:key];
	}
	
	value = [infoDict valueForKey:key];
	
	if([value isKindOfClass:[NSDictionary class]])
	{
		static NSString *env = nil;
		
		if(env == nil)
		{
			env = [infoDict valueForKey:@"env"];
		}
		
		// check for environment specific variable within dictionary
		// otherwise just return dictionary
		if([[value allKeys] containsObject:env])
		{
			value = [value valueForKey:env];
		}
	}
	
	return value;
}


+ (NSString*)applicationShortVersionString 
{
	return [self objectForKey:@"CFBundleShortVersionString"];
}


+ (NSString *)applicationDisplayName
{
	return [self objectForKey:@"CFBundleDisplayName"];
}

@end
