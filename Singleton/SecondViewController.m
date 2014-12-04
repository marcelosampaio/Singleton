//
//  SecondViewController.m
//  Singleton
//
//  Created by Marcelo Sampaio on 12/4/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "SecondViewController.h"
#import "MainSingleton.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize textMsg;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textMsg.text=[MainSingleton instance].globalString;
}

- (IBAction)set:(id)sender {
    [MainSingleton instance].globalString=self.textMsg.text;
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
