//
//  LichHocManager.h
//  TNUSocial
//
//  Created by framgia on 8/30/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LichHocManagerDelegate
- (void)didResponseWithMessage:(NSString *)message withError:(NSError *)error;
@end

@interface LichHocManager : NSObject
@property (weak, nonatomic) id<LichHocManagerDelegate> delegate;
- (void)layLichHocWithFrom:(NSString *)from token:(NSString *)token;
@end
