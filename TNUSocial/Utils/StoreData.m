//
//  StoreData.m
//  TNUSocial
//
//  Created by framgia on 8/30/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "StoreData.h"
#import "UICKeyChainStore.h"
#import "MyConst.h"

@implementation StoreData

#pragma mark - Init UICKeyChainStore
+ (UICKeyChainStore *)initTheKeyChain {
    UICKeyChainStore *keychain = [UICKeyChainStore keyChainStoreWithService:KEYCHAIN_KEY_SERVICE];
    return keychain;
}

#pragma mark - Token
+ (NSString *)getToken {
    UICKeyChainStore *chain = [StoreData initTheKeyChain];
    return chain[@"token"];;
}

+ (void)setToken:(NSString *)token {
    UICKeyChainStore *chain = [StoreData initTheKeyChain];
    [chain setString:token forKey:@"token"];
}

+ (void)clearToken {
    UICKeyChainStore *chain = [StoreData initTheKeyChain];
    [chain removeItemForKey:@"token"];
}

#pragma mark - Lich Hoc
+ (NSDictionary *)getLichHoc {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults objectForKey:@"lich_hoc"];
}

+ (void)setLichHoc:(NSDictionary *)lichHoc {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:lichHoc forKey:@"lich_hoc"];
}

+ (void)clearLichHoc {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
     [defaults removeObjectForKey:@"lich_hoc"];
}

@end
