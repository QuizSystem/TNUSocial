//
//  MenuViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/20/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "MenuViewController.h"
#import "LoginManager.h"

@interface MenuViewController ()
- (IBAction)btLogin:(id)sender;
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btLogin:(id)sender {
    NSLog(@"Login");
    LoginManager *loginManager = [[LoginManager alloc] init];
//    DTC155D4801030035
//    pass: nguyenbaotram00
    ////from=DTC&app-id=475681656679&app-secret=LsO189xl1p5b5673t87pQ05w6d3k9KeP&username=DTC155D4801030035&password=nguyenbaotram00
    [loginManager loginWithFrom:@"DTC" appId:@"475681656679" appSecret:@"LsO189xl1p5b5673t87pQ05w6d3k9KeP"
        username:@"DTC155D4801030035" password:@"nguyenbaotram00"];
}

@end
