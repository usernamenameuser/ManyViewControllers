//
//  XibViewController.m
//  ManyViewControllers
//
//  Created by user on 17.04.17.
//  Copyright © 2017 iPodium. All rights reserved.
//

#import "XibViewController.h"

@interface XibViewController ()

@end

@implementation XibViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    return self;
}

- (IBAction)backFromXib:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

@end
