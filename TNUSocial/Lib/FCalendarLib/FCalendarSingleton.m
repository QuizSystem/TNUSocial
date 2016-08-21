//
//  FCalendarSingleton.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/21/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "FCalendarSingleton.h"

@implementation FCalendarSingleton

+ (id)sharedInstance {
    static FCalendarSingleton *sharedFCalendar = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedFCalendar = [[self alloc] init];
    });
    return sharedFCalendar;
}

- (id)init {
    if (self = [super init]) {
        self.dateSelected = nil;
    }
    return self;
}
@end
