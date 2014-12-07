//
//  ThirdViewController.m
//  Singleton
//
//  Created by Marcelo Sampaio on 12/7/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ThirdViewController.h"
#import "MainSingleton.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize message;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.message.text=[MainSingleton instance].globalString;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
