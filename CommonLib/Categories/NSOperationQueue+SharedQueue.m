//
//  NSObject+SharedQueue.m
//  SCBCommon
//
//  Created by Greg Martin on 1/2/11.
//  Copyright 2011 Standard Chartered Bank. All rights reserved.
//

#import "NSOperationQueue+SharedQueue.h"


@implementation NSOperationQueue (SharedQueue)

+(NSOperationQueue*)sharedOperationQueue;
{
	static NSOperationQueue* sharedQueue = nil;
	
	@synchronized(self)
	{
		if (sharedQueue == nil) 
		{
			sharedQueue = [[NSOperationQueue alloc] init];
			[sharedQueue setMaxConcurrentOperationCount:NSOperationQueueDefaultMaxConcurrentOperationCount];
		}
	}
	
	return sharedQueue;
}

@end
