//
//  ModalViewController.m
//  ManyViewControllers
//
//  Created by user on 17.04.17.
//  Copyright © 2017 iPodium. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelText;

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.labelText.text = self.labelTextValue;
}

- (IBAction)backFromModal:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
