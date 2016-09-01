//
//  StoreData.h
//  TNUSocial
//
//  Created by framgia on 8/30/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoreData : NSObject

#pragma mark - Token
+ (NSString *)getToken;

+ (void)setToken:(NSString *)token;

+ (void)clearToken;

#pragma mark - Lich Hoc
+ (NSDictionary *)getLichHoc;

+ (void)setLichHoc:(NSDictionary *)lichHoc;

+ (void)clearLichHoc;

@end
