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

@implementation LoginManager

- (void)loginWithFrom:(NSString *)from appId:(NSString *)appId appSecret:(NSString *)appSecret
    username:(NSString *)username password:(NSString *)password {
    NSString *urlLogin = URL_LOGIN;
    NSString *paramLogin = [NSString stringWithFormat:@"%@=%@&%@=%@&%@=%@&%@=%@&%@=%@",
        FROM, from, APP_ID, appId, APP_SECRET, appSecret, USERNAME, username, PASSWORD, password];
    [NetworkConnection responseWithUrl:urlLogin method:POST params:paramLogin
        resultRequest:^(NSDictionary *dic, NSError *error) {
            if (!error && dic) {
                NSLog(@"dic = %@", dic);
            } else {
                NSLog(@"Error");
            }
    }];
}

@end
