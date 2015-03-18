//
//  PasteBoardUtil.h
//  CommonLib
//
//  Created by Fahad Idrees on 3/9/15.
//  Copyright (c) 2015 folio3. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *pasteBoardName = @"pasteboard";
static NSString *pasteBoardDataKey = @"pasteboard_dataKey";

/*!
 @class myInterface
 @inherits Base class
 @conforms List of protocol name those this class conforms to
 @discussion This is a discussion.
 It can span many lines or paragraphs.
 */

@interface PasteBoardUtil : NSObject

+ (void)saveDataOnPasteBoard:(NSDictionary *)dict;
+ (NSDictionary *)getDataFromPasteboard;

@end
