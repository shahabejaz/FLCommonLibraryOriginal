//
//  UIColor+HexColors.h
//  KiwiHarness
//
//  Created by Tim Duckett on 07/09/2012.
//  Copyright (c) 2012 Charismatic Megafauna Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (Extensions)

/*
 * Use with `UIColor *myColor = [UIColor colorWithHexString:@"aa22cc"];`
 
 The hex string should not include a `#` character.  The method will check for non-hex values, or values that are not valid colors.
 */
+(UIColor *)colorWithHexString:(NSString *)hexString;

/*
 * Use with `NSString *hexValue = [UIColor hexValuesFromUIColor:[UIColor colorWithRed:0.711 green:0.773 blue:1.000 alpha:1.000];`
 
 This will return `b5c5ff`.
 
 The returned hex string does not include a `#` character.
 */
+(NSString *)hexValuesFromUIColor:(UIColor *)color;

@end
