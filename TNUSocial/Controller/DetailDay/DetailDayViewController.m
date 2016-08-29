//
//  DetailDayViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/28/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "DetailDayViewController.h"

@interface DetailDayViewController ()
- (IBAction)btBack:(id)sender;
- (IBAction)btAdd:(id)sender;
- (IBAction)btToday:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek;
@property (weak, nonatomic) IBOutlet UILabel *dayOfMonth;
@property (weak, nonatomic) IBOutlet UILabel *monthYear;
@end

@implementation DetailDayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    NSLog(@">>>Date Selected : %@",[formatter stringFromDate:self.dateSelected]);
    NSString *thu = [formatter stringFromDate:self.dateSelected];
    self.Screenindex.text=[[NSString alloc]initWithFormat:@"Screen %ld. Date = %@",(long)self.index, thu];
    
    [self setText];
}

#pragma mark - Set Text
- (void)setText {
    [self setTextDayOfWeek];
    [self setTextDayOfMonth];
    [self setTextMonthYear];
}

- (void)setTextDayOfWeek {
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *weekdayComponents = [gregorian components:(NSDayCalendarUnit | NSWeekdayCalendarUnit)
        fromDate:self.dateSelected];
    NSInteger weekday = [weekdayComponents weekday];
    self.dayOfWeek.text = [NSString stringWithFormat:@"Thứ %d", weekday];
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

- (IBAction)btBack:(id)sender {
    NSLog(@"Back");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btAdd:(id)sender {
    NSLog(@"Add");
}

- (IBAction)btToday:(id)sender {
    NSLog(@"Today");
}
@end
