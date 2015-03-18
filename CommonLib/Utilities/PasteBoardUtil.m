//
//  PasteBoardUtil.m
//  CommonLib
//
//  Created by Fahad Idrees on 3/9/15.
//  Copyright (c) 2015 folio3. All rights reserved.
//

#import "PasteBoardUtil.h"
#import <UIKit/UIKit.h>

@implementation PasteBoardUtil

+ (void)saveDataOnPasteBoard:(NSDictionary *)dict{
    
    UIPasteboard * pb = [UIPasteboard pasteboardWithName:pasteBoardName create:YES];
    [pb setPersistent:TRUE];
    
    [pb setData:[NSKeyedArchiver archivedDataWithRootObject:dict] forPasteboardType:pasteBoardDataKey];
}

+ (NSDictionary *)getDataFromPasteboard {
    
    UIPasteboard * pb=[UIPasteboard pasteboardWithName:pasteBoardName create:NO];
    NSData * data=[pb valueForPasteboardType:pasteBoardDataKey];
    NSDictionary * dict;
    
    if (!data) {
        return nil;
    }
    @try {
        dict = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    }
    @catch (NSException* exception)
    {
        NSLog(@"Exception: %@",exception);
        return nil;
    }
    return dict;
}

@end


