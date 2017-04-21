//
//  SecondViewController.m
//  ManyViewControllers
//
//  Created by user on 17.04.17.
//  Copyright © 2017 iPodium. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ModalViewController.h"
#import "XibViewController.h"
#import "SecondSBViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *goToModal = [[UIBarButtonItem alloc] initWithTitle:@"Modal" style:UIBarButtonItemStylePlain target:self action:@selector(goToModalViewController:)];
    self.navigationItem.rightBarButtonItem = goToModal;
}

- (IBAction)goToModalViewController:(id)sender {
    [self performSegueWithIdentifier:@"ShowModalViewController" sender:sender];
}

- (IBAction)goToXib:(id)sender {
    XibViewController *xibvc = [XibViewController new];
    xibvc.navigationItem.title = [NSString stringWithFormat:@"Xib"];
    [self.navigationController pushViewController:xibvc animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"gotoThird"]) {
        ThirdViewController *dest = [segue destinationViewController];
        dest.navigationItem.title = [NSString stringWithFormat:@"Third"];
    }
    else if ([segue.identifier isEqualToString:@"gotoSecondSB"]) {
        SecondSBViewController *dest = [segue destinationViewController];
        dest.title = [NSString stringWithFormat:@"SecondSB"];
    }
    else if ([segue.identifier isEqualToString:@"ShowModalViewController"]) {
        ModalViewController *modal = [segue destinationViewController];
        modal.labelTextValue = @"Modal";
        modal.title = [NSString stringWithFormat:@"Modal"];
    }
}

@end
