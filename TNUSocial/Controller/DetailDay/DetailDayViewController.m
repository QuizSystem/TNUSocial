//
//  DetailDayViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/28/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "DetailDayViewController.h"
#import "MyConst.h"

@interface DetailDayViewController ()
- (IBAction)btBack:(id)sender;
- (IBAction)btAdd:(id)sender;
- (IBAction)btToday:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek;
@property (weak, nonatomic) IBOutlet UILabel *dayOfMonth;
@property (weak, nonatomic) IBOutlet UILabel *monthYear;
@property (weak, nonatomic) IBOutlet UIButton *btToday;
@end

@implementation DetailDayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"dd/MM/yyyy"];
//    NSLog(@">>>Date Selected : %@",[formatter stringFromDate:self.dateSelected]);
//    NSString *thu = [formatter stringFromDate:self.dateSelected];
//    self.Screenindex.text=[[NSString alloc]initWithFormat:@"Screen %ld. Date = %@",(long)self.index, thu];
    
    [self setText];
}

#pragma mark - Set Text
- (void)setText {
    [self setTextDayOfWeek];
    [self setTextDayOfMonth];
    [self setTextMonthYear];
    [self setTextButtonToday];
}

- (void)setTextDayOfWeek {
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *weekdayComponents = [gregorian components:(NSDayCalendarUnit | NSWeekdayCalendarUnit)
        fromDate:self.dateSelected];
    NSInteger weekday = [weekdayComponents weekday];
    if (weekday >= 2 && weekday <= 7) {
        self.dayOfWeek.text = [NSString stringWithFormat:@"Thứ %d", weekday];
    } else {
        self.dayOfWeek.text = @"Chủ Nhật";
    }
}

- (void)setTextDayOfMonth {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd"];
    self.dayOfMonth.text = [formatter stringFromDate:self.dateSelected];
}

- (void)setTextMonthYear {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM/yyyy"];
    self.monthYear.text = [formatter stringFromDate:self.dateSelected];
}

- (void)setTextButtonToday {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd"];
    NSString *today = [formatter stringFromDate:[NSDate date]];
    [self.btToday setTitle:today forState:UIControlStateNormal];
}

- (IBAction)btBack:(id)sender {
    NSLog(@"Back");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btAdd:(id)sender {
    NSLog(@"Add");
}

- (IBAction)btToday:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:GO_TODAY_DETAIL_DAY object:nil];
}

@end
