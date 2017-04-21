//
//  ThirdViewController.m
//  ManyViewControllers
//
//  Created by user on 17.04.17.
//  Copyright © 2017 iPodium. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)backButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)backToStartButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
