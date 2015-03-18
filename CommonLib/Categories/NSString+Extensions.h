//
//  NSString+Extensions.h
//  SCBCommon
//
//  Created by Greg Martin on 1/2/11.
//  Copyright 2011 Standard Chartered Bank. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (Extensions)

/*!
 * @discussion A really simple way to calculate the sum of two numbers.
 * @param firstNumber An NSInteger to be used in the summation of two numbers
 * @param secondNumber The second half of the equation.
 * @return The sum of the two numbers passed in.
 */

+ (BOOL)isNullOrEmpty:(NSString *)value;

- (NSString *)trim;
- (NSString *)urlEncodedString;
- (NSString *)stringOfNumericCharacters;
- (NSString *)substringFrom:(NSInteger)from to:(NSInteger)to;
- (BOOL)contains:(NSString *)string;

@end
