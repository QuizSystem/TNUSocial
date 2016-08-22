//
//  WeekView.h
//  TNUSocial
//
//  Created by Thieu Mao on 8/21/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCalendarView.h"

@interface WeekView : UIView <UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) UICollectionView *collectionViewWeek;
@property (strong, nonatomic) NSCalendar *calendar;
@property (strong, nonatomic) NSMutableArray *arrWeekDayString;
-(void)setCurrentCalendar:(NSCalendar *)calendar;

@end
