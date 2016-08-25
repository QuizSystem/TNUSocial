//
//  ThangViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/21/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "ThangViewController.h"
#import "FCalendarView.h"
#import "FDateUtility.h"

@interface ThangViewController () <FCalendarDelegate>
@property (weak, nonatomic) IBOutlet FCalendarView *calView;
- (IBAction)btToday:(id)sender;
@end

@implementation ThangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.calView setDataWithCalendar:nil monthDisplay:[NSDate date] dateSelected:nil showDayOff:NO dayViewHeight:-1];
    self.calView.delegate = self;
}

#pragma mark - Calendar delegate
- (void)didSelectDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    NSLog(@"Date Selected : %@",[formatter stringFromDate:date]);
}

- (IBAction)btToday:(id)sender {
    [self.calView setDataWithCalendar:nil monthDisplay:[NSDate date] dateSelected:nil showDayOff:NO dayViewHeight:-1];
}

@end
