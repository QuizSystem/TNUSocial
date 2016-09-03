//
//  DangNhapViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 9/3/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "DangNhapViewController.h"

@interface DangNhapViewController ()
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
    NSLog(@"Dang nhap");
    NSLog(@"%@", self.tfMaSinHVien.text);
    NSLog(@"%@", self.tfMatKhau.text);
}

- (IBAction)btBack:(id)sender {
    NSLog(@"Back");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
