//
//  MainViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/21/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "MainViewController.h"
#import "FCalendarView.h"
#import "FDateUtility.h"

@interface MainViewController () <FCalendarDelegate>

@property (weak, nonatomic) IBOutlet FCalendarView *calView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.calView setDataWithCalendar:nil monthDisplay:[NSDate date] dateSelected:nil showDayOff:YES dayViewHeight:-1];
    self.calView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Calendar delegate
- (void)didSelectDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    NSLog(@"Date Selected : %@",[formatter stringFromDate:date]);
}

@end
