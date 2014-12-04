//
//  MainSingleton.h
//  Singleton
//
//  Created by Marcelo Sampaio on 12/4/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainSingleton : NSObject

@property (nonatomic,strong) NSString *globalString;


+ (MainSingleton *) instance;

@end
