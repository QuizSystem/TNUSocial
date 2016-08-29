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
#import "RootDayViewController.h"

@interface ThangViewController () <FCalendarDelegate>
@property (weak, nonatomic) IBOutlet FCalendarView *calView;
@property (weak, nonatomic) IBOutlet UIButton *btToday;
- (IBAction)btToday:(id)sender;
@end

@implementation ThangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setValueButtonToday];
    [self.calView setDataWithCalendar:nil monthDisplay:[NSDate date] dateSelected:nil showDayOff:NO dayViewHeight:-1];
    self.calView.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

#pragma mark - Calendar delegate
- (void)didSelectDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    NSLog(@"Date Selected : %@",[formatter stringFromDate:date]);
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Day" bundle:nil];
    RootDayViewController *vc = [sb instantiateViewControllerWithIdentifier:@"RootDayViewController"];
    vc.dateSelected = date;
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - set value for button Today
- (void)setValueButtonToday {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd"];
    NSString *today = [formatter stringFromDate:[NSDate date]];
    [self.btToday setTitle:today forState:UIControlStateNormal];
}

#pragma mark - Event click button Today
- (IBAction)btToday:(id)sender {
    [self.calView setDataWithCalendar:nil monthDisplay:[NSDate date] dateSelected:nil showDayOff:NO dayViewHeight:-1];
}

@end
