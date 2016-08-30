//
//  LoginManager.m
//  TNUSocial
//
//  Created by framgia on 8/30/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "LoginManager.h"
#import "NetworkConnection.h"
#import "MyConst.h"
#import "StoreData.h"

@implementation LoginManager

- (void)loginWithFrom:(NSString *)from appId:(NSString *)appId appSecret:(NSString *)appSecret
    username:(NSString *)username password:(NSString *)password {
    NSString *urlLogin = DOMAIN_VALLUE;
    NSString *paramLogin = [NSString stringWithFormat:@"%@&%@=%@&%@=%@&%@=%@&%@=%@&%@=%@",
        URL_LOGIN, FROM, from, APP_ID, appId, APP_SECRET, appSecret, USERNAME, username, PASSWORD, password];
    [NetworkConnection responseWithUrl:urlLogin method:POST params:paramLogin
        resultRequest:^(NSDictionary *dic, NSError *error) {
            if (!error && dic) {
                BOOL status = dic[STATUS];
                if (status) {
                    NSString *accessToken = dic[ACCESS_TOKEN];
                    [StoreData setToken:accessToken];
//                    NSLog(@"accessToken = %@", accessToken);
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self.delegate didResponseWithMessage:nil withError:nil];
                    });
                } else {
                    int code = dic[CODE];
                    NSString *msg = dic[MSG];
                    NSLog(@"code = %d", code);
                    NSLog(@"msg = %@", msg);
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self.delegate didResponseWithMessage:msg withError:nil];
                    });
                }
            } else {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self.delegate didResponseWithMessage:@"Error" withError:error];
                });
            }
    }];
}

@end
