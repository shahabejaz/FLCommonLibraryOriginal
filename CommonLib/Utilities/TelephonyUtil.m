//
//  TelephonyUtil.m
//  SCBCommon
//
//  Created by Greg Martin on 1/11/11.
//  Copyright 2011 Standard Chartered Bank. All rights reserved.
//

#import "TelephonyUtil.h"

static TelephonyUtil *instance = nil;

@implementation TelephonyUtil

+ (TelephonyUtil *)shared
{
	@synchronized(self)
	{
		if(instance == NULL)
		{
			instance = [[TelephonyUtil alloc] init]; 
		}
		
	}
	
	return instance;
}


- (CTTelephonyNetworkInfo *)networkInfo
{
	if(!networkInfo)
	{
		networkInfo = [[CTTelephonyNetworkInfo alloc] init];
	}
	
	return networkInfo;
}


- (NSString *)carrierName
{
	NSString *name = nil;
	
	if([self networkInfo])
	{
		CTCarrier *carrier = networkInfo.subscriberCellularProvider;
		
		if(carrier)
		{
			name = carrier.carrierName;
		}
	}
	
	return name;
}


- (NSString *)carrierCountryISOCode
{
	NSString *code = nil;
	
	if([self networkInfo])
	{
		CTCarrier *carrier = networkInfo.subscriberCellularProvider;
		
		if(carrier)
		{
			code = [carrier.isoCountryCode uppercaseString];
		}
	}
	
	return code;
}


- (NSString *)carrierCountryName
{
	NSString *name = nil;
	
	NSString *code = [self carrierCountryISOCode];
	
	if(![NSString isNullOrEmpty:code])
	{
		name = [[NSLocale currentLocale] displayNameForKey:NSLocaleCountryCode value:code];
	}
	
	return name;
}

- (NSString *)mobileNetworkCode {
	return [self networkInfo].subscriberCellularProvider.mobileCountryCode;
}

- (NSString *)mobileCarrierCode {
	return [self networkInfo].subscriberCellularProvider.mobileCountryCode;
}

@end
