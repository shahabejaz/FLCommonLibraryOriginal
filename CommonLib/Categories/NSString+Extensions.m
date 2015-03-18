//
//  NSStringExtensions.m
//  SCBCommon
//
//  Created by Greg Martin on 1/2/11.
//  Copyright 2011 Standard Chartered Bank. All rights reserved.
//

#import "NSString+Extensions.h"


@implementation NSString (Extensions)

+ (BOOL)isNullOrEmpty:(NSString *)value
{
	if(value == nil
	   || value.length == 0)
	{
		return YES;
	}
	
	return NO;
}


- (NSString *)trim 
{
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}


- (NSString *)urlEncodedString
{
	NSArray *escapeChars = [NSArray arrayWithObjects:@";" , @"/" , @"?" , @":" ,
							@"@" , @"&" , @"=" , @"+" ,
							@"$" , @"," , @"[" , @"]",
							@"#", @"!", @"'", @"(", 
							@")", @"*", nil];
	
    NSArray *replaceChars = [NSArray arrayWithObjects:@"%3B" , @"%2F" , @"%3F" ,
							 @"%3A" , @"%40" , @"%26" ,
							 @"%3D" , @"%2B" , @"%24" ,
							 @"%2C" , @"%5B" , @"%5D", 
							 @"%23", @"%21", @"%27",
							 @"%28", @"%29", @"%2A", nil];
	
    NSUInteger len = [escapeChars count];
	
    NSMutableString *temp = [self mutableCopy];
	
    int i;
    for(i = 0; i < len; i++)
    {
		
        [temp replaceOccurrencesOfString: [escapeChars objectAtIndex:i]
							  withString:[replaceChars objectAtIndex:i]
								 options:NSLiteralSearch
								   range:NSMakeRange(0, [temp length])];
    }
	
    return temp;
}


- (NSString *)stringOfNumericCharacters
{
	NSMutableString *digits = [NSMutableString string];
	
	if(self.length > 0)
	{
		NSCharacterSet *numbers = [NSCharacterSet decimalDigitCharacterSet];
		
		// keep out only numeric values
		for(int i = 0; i < self.length; i++)
		{
			unichar c = [self characterAtIndex:i];
			
			if([numbers characterIsMember:c])
			{
				[digits appendString:[NSString stringWithCharacters:&c length:1]];
			}
		}
	}
	
	return digits;
}

- (NSString *)substringFrom:(NSInteger)from to:(NSInteger)to {
    NSString *rightPart = [self substringFromIndex:from];
    return [rightPart substringToIndex:to-from];
}

- (BOOL)contains:(NSString *)string {
    NSRange range = [self rangeOfString:string];
    return (range.location != NSNotFound);
}

@end
