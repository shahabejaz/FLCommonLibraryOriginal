//
//  TelephonyUtil.h
//  SCBCommon
//
//  Created by Greg Martin on 1/11/11.
//  Copyright 2011 Standard Chartered Bank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>
#import "NSString+Extensions.h"


@interface TelephonyUtil : NSObject 
{
	CTTelephonyNetworkInfo *networkInfo;
}

+ (TelephonyUtil *)shared;
- (CTTelephonyNetworkInfo *)networkInfo;
- (NSString *)carrierName;
- (NSString *)carrierCountryISOCode;
- (NSString *)carrierCountryName;

- (NSString *)mobileNetworkCode;
- (NSString *)mobileCarrierCode;

@end
