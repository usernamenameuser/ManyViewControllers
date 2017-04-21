//
//  FirstViewController.m
//  ManyViewControllers
//
//  Created by user on 17.04.17.
//  Copyright © 2017 iPodium. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"gotoSecond"]) {
        SecondViewController *dest = [segue destinationViewController];
        dest.navigationItem.title = [NSString stringWithFormat:@"Second"];
    }
}

@end
