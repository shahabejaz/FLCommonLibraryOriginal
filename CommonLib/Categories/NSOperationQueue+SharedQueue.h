//
//  NSObject+SharedQueue.h
//  SCBCommon
//
//  Created by Greg Martin on 1/2/11.
//  Copyright 2011 Standard Chartered Bank. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSOperationQueue (SharedQueue)

+(NSOperationQueue*)sharedOperationQueue;

@end