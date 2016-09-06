//
//  LoginManager.h
//  TNUSocial
//
//  Created by framgia on 8/30/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginManagerDelegate
- (void)didResponseSuccess;
- (void)didResponseFail;
@end

@interface LoginManager : NSObject
@property (weak, nonatomic) id<LoginManagerDelegate> delegate;
- (void)loginWithFrom:(NSString *)from appId:(NSString *)appId appSecret:(NSString *)appSecret
    username:(NSString *)username password:(NSString *)password;
@end
