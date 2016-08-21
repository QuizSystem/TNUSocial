//
//  FCalendarSingleton.h
//  TNUSocial
//
//  Created by Thieu Mao on 8/21/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCalendarSingleton : NSObject
@property (strong, nonatomic) NSDate *dateSelected;
+ (id)sharedInstance;
@end