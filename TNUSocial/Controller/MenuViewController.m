//
//  MenuViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/20/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "MenuViewController.h"
#import "LoginManager.h"
#import "StoreData.h"
#import "LichHocManager.h"

@interface MenuViewController () <LoginManagerDelegate>
- (IBAction)btLogin:(id)sender;
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btLogin:(id)sender {
    NSLog(@"Login");
    LoginManager *loginManager = [[LoginManager alloc] init];
    loginManager.delegate = self;
//    DTC155D4801030035
//    pass: nguyenbaotram00
    ////from=DTC&app-id=475681656679&app-secret=LsO189xl1p5b5673t87pQ05w6d3k9KeP&username=DTC155D4801030035&password=nguyenbaotram00
    [loginManager loginWithFrom:@"DTC" appId:@"475681656679" appSecret:@"LsO189xl1p5b5673t87pQ05w6d3k9KeP"
        username:@"DTC155D4801030035" password:@"nguyenbaotram00"];
}

#pragma mark - LoginManagerDelegate
- (void)didResponseWithMessage:(NSString *)message withError:(NSError *)error {
    if (message == nil && error == nil) {
//        NSLog(@"Token = %@", [StoreData getToken]);
        NSString *token = [StoreData getToken];
        LichHocManager *lichHocManager = [[LichHocManager alloc] init];
        [lichHocManager layLichHocWithFrom:@"DTC" token:token];
    } else {
        NSLog(@"Error: %@", message);
    }
}

@end
