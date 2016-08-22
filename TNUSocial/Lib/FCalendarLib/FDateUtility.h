//
//  FDateUtility.h
//  TNUSocial
//
//  Created by Thieu Mao on 8/21/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NextAndPreviousDate)

- (NSDate *)nextMonth;
- (NSDate *)previousMonth;
- (NSUInteger)numberOfDayInMonth;
- (BOOL)inSameMonthWithDate:(NSDate *)date;
- (BOOL)isEqualWithDate:(NSDate *)date;
+ (NSDate *)dateBeginningOfMonth:(NSDate *)month inCalendar:(NSCalendar *)calendar;
+ (NSDate *)firstDateInMonth:(NSDate *)month;

@end
