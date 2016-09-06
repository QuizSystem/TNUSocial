//
//  DangNhapViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 9/3/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "DangNhapViewController.h"
#import "LoginManager.h"
#import "StoreData.h"
#import "LichHocManager.h"

@interface DangNhapViewController () <LoginManagerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tfMaSinHVien;
@property (weak, nonatomic) IBOutlet UITextField *tfMatKhau;
@property (weak, nonatomic) IBOutlet UIButton *btDangNhap;
- (IBAction)btDangNhap:(id)sender;
- (IBAction)btBack:(id)sender;

@end

@implementation DangNhapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btDangNhap:(id)sender {
    LoginManager *loginManager = [[LoginManager alloc] init];
    loginManager.delegate = self;
    
//    [loginManager loginWithFrom:@"DTC" appId:@"475681656679" appSecret:@"LsO189xl1p5b5673t87pQ05w6d3k9KeP"
//        username:@"DTC155D4801030035" password:@"nguyenbaotram00"];
    [loginManager loginWithFrom:@"DTC" appId:@"475681656679" appSecret:@"LsO189xl1p5b5673t87pQ05w6d3k9KeP"
        username:self.tfMaSinHVien.text password:self.tfMatKhau.text];
}

- (IBAction)btBack:(id)sender {
    NSLog(@"Back");
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - LoginManagerDelegate
- (void)didResponseSuccess {
    NSLog(@"Thanh cong");
}

- (void)didResponseFail {
    NSLog(@"That bai");
}

@end
