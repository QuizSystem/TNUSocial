//
//  MenuViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/20/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "MenuViewController.h"
#import "DangNhapViewController.h"

@interface MenuViewController ()
- (IBAction)btLogin:(id)sender;
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btLogin:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"DangNhap" bundle:nil];
    DangNhapViewController *vc = [sb instantiateViewControllerWithIdentifier:@"DangNhapViewController"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
