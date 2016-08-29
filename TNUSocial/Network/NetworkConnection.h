//
//  NetworkConnection.h
//  TNUSocial
//
//  Created by framgia on 8/29/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkConnection : NSObject

typedef void(^ResultRequest)(NSDictionary *, NSError *);

typedef NS_ENUM(NSInteger, METHODS) {
    GET, POST, PATCH, DELETE
};

+ (NSString *)formatMethodTypeToString:(METHODS)method;

+ (NSURLSessionDataTask *)responseWithUrl:(NSString *)url method:(METHODS)method params:(NSString *)params
    resultRequest:(ResultRequest)complete;

@end
