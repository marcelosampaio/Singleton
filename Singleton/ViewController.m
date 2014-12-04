//
//  ViewController.m
//  Singleton
//
//  Created by Marcelo Sampaio on 12/4/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"
#import "MainSingleton.h"

#define INITIAL_MESSAGE @"Inicio - Main"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lblMsg;

- (void)viewDidLoad {
    [super viewDidLoad];
    [MainSingleton instance].globalString=INITIAL_MESSAGE;

    NSLog(@"didLoad = %@",[MainSingleton instance].globalString);
    self.lblMsg.text=[MainSingleton instance].globalString;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"******** will appear");
    [MainSingleton instance].globalString=[MainSingleton instance].globalString;
    NSLog(@"willAppear = %@",[MainSingleton instance].globalString);
    self.lblMsg.text=[MainSingleton instance].globalString;
}



@end
