//
//  MyConst.m
//  TNUSocial
//
//  Created by framgia on 8/29/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "MyConst.h"

@implementation MyConst

#pragma mark - Link API
NSString *const URL_LOGIN = @"api=login-app";
NSString *const URL_THONG_TIN_SINH_VIEN = @"api=get&path=user";
NSString *const URL_LICH_HOC = @"api=get&path=student-time-table";
NSString *const URL_THONG_BAO_NHA_TRUONG = @"api=get&path=news";
NSString *const URL_CHI_TIET_THONG_BAO = @"api=get&path=news-detail";
NSString *const URL_DIEM_SINH_VIEN = @"api=get&path=student-mark";
NSString *const URL_LICH_THI = @"api=get&path=student-exam-list";

#pragma mark - Param API
NSString *const FROM = @"from";
NSString *const APP_ID = @"app-id";
NSString *const APP_SECRET = @"app-secret";
NSString *const USERNAME = @"username";
NSString *const PASSWORD = @"password";
NSString *const ACCESS_TOKEN = @"access-token";
NSString *const NEWS_ID = @"newsid";
NSString *const SEMESTER = @"semester";
NSString *const EXAMINATION = @"examination";
NSString *const SESSION = @"session";

#pragma mark - Value Define
NSString *const APP_ID_VALUE = @"475681656679";
NSString *const APP_SECRET_VALUE = @"LsO189xl1p5b5673t87pQ05w6d3k9KeP";
NSString *const DOMAIN_VALLUE = @"http://ictu.kingdark.org/api.php";

@end
