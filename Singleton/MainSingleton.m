//
//  MainSingleton.m
//  Singleton
//
//  Created by Marcelo Sampaio on 12/4/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "MainSingleton.h"


@implementation MainSingleton

@synthesize globalString;

static MainSingleton *instance = nil;

#pragma mark Singleton

+ (MainSingleton *) instance
{
    @synchronized([MainSingleton class])
    {
        if (instance == nil) {
            instance = [[super alloc] init];
        }
        return instance;
    };
    return nil;
}


@end
