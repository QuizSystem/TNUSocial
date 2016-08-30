//
//  MyConst.h
//  TNUSocial
//
//  Created by framgia on 8/29/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyConst : NSObject

#pragma mark - Link API
extern NSString *const URL_LOGIN;
extern NSString *const URL_THONG_TIN_SINH_VIEN;
extern NSString *const URL_LICH_HOC;
extern NSString *const URL_THONG_BAO_NHA_TRUONG;
extern NSString *const URL_CHI_TIET_THONG_BAO;
extern NSString *const URL_DIEM_SINH_VIEN;
extern NSString *const URL_LICH_THI;

#pragma mark - Param API
extern NSString *const FROM;
extern NSString *const APP_ID;
extern NSString *const APP_SECRET;
extern NSString *const USERNAME;
extern NSString *const PASSWORD;
extern NSString *const ACCESS_TOKEN;
extern NSString *const NEWS_ID;
extern NSString *const SEMESTER;
extern NSString *const EXAMINATION;
extern NSString *const SESSION;

#pragma mark - Param Reponse
extern NSString *const STATUS;
extern NSString *const CODE;
extern NSString *const MSG;

#pragma mark - Value Define
extern NSString *const APP_ID_VALUE;
extern NSString *const APP_SECRET_VALUE;
extern NSString *const DOMAIN_VALLUE;
extern NSString *const KEYCHAIN_KEY_SERVICE;

#pragma mark - Const for NSNotification
extern NSString *const GO_TODAY_DETAIL_DAY;

@end
