//
//  LichHocManager.m
//  TNUSocial
//
//  Created by framgia on 8/30/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "LichHocManager.h"
#import "NetworkConnection.h"
#import "MyConst.h"

@implementation LichHocManager

- (void)layLichHocWithFrom:(NSString *)from token:(NSString *)token {
    NSString *urlLichHoc = DOMAIN_VALLUE;
    NSString *paramLichHoc = [NSString stringWithFormat:@"%@&%@=%@&%@=%@", URL_LICH_HOC, FROM, from, ACCESS_TOKEN,
        token];
    [NetworkConnection responseWithUrl:urlLichHoc method:POST params:paramLichHoc
        resultRequest:^(NSDictionary *dic, NSError *error) {
        if (!error && dic) {
            NSLog(@"Normal");
//            NSLog(@"layLichHoc = %@", dic);
            BOOL status = dic[STATUS];
            if (status) {
                NSDictionary *data = dic[@"data"];
                // array semester
                NSDictionary *semester = data[@"semester"];
                // node current
                NSDictionary *current = data[@"current"];
                // child of node current
                NSDictionary *subject = current[@"subject"];
                NSDictionary *table = current[@"table"];
                NSString *semesterString = current[@"semester"];
                NSLog(@"subject = %@", subject);
            } else {
                NSLog(@"Error");
            }
        } else {
            NSLog(@"Error");
        }
    }];
}

@end
