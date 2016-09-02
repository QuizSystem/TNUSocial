//
//  DetailDayViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/28/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "DetailDayViewController.h"
#import "MyConst.h"
#import "StoreData.h"

@interface DetailDayViewController ()
- (IBAction)btBack:(id)sender;
- (IBAction)btAdd:(id)sender;
- (IBAction)btToday:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *dayOfWeek;
@property (weak, nonatomic) IBOutlet UILabel *dayOfMonth;
@property (weak, nonatomic) IBOutlet UILabel *monthYear;
@property (weak, nonatomic) IBOutlet UIButton *btToday;

@property (weak, nonatomic) IBOutlet UILabel *lbMon1;
@property (weak, nonatomic) IBOutlet UILabel *lbMon2;
@property (weak, nonatomic) IBOutlet UILabel *lbMon3;
@property (weak, nonatomic) IBOutlet UILabel *lbTen1;
@property (weak, nonatomic) IBOutlet UILabel *lbTen2;
@property (weak, nonatomic) IBOutlet UILabel *lbTen3;
@property (weak, nonatomic) IBOutlet UILabel *lbTime1;
@property (weak, nonatomic) IBOutlet UILabel *lbTime2;
@property (weak, nonatomic) IBOutlet UILabel *lbTime3;
@property (weak, nonatomic) IBOutlet UILabel *lbPlace1;
@property (weak, nonatomic) IBOutlet UILabel *lbPlace2;
@property (weak, nonatomic) IBOutlet UILabel *lbPlace3;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;

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
    
    self.view1.hidden = YES;
    self.view2.hidden = YES;
    self.view3.hidden = YES;
    [self setText];
}

#pragma mark - Set Text
- (void)setText {
    [self setTextDayOfWeek];
    [self setTextDayOfMonth];
    [self setTextMonthYear];
    [self setTextButtonToday];
    [self setLichHoc];
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

- (void)setLichHoc {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    NSString *ngayChon = [formatter stringFromDate:self.dateSelected];
    
    NSDictionary *data = [StoreData getLichHoc];
    // array semester
    NSDictionary *semester = data[@"semester"];
    // node current
    NSDictionary *current = data[@"current"];
    // child of node current
    NSDictionary *subject = current[@"subject"];
    NSDictionary *table = current[@"table"];
    NSString *semesterString = current[@"semester"];
    NSLog(@"table = %@", table);
    int i = 0;
    for (NSDictionary *childTable in table) {
        NSString *subjectId = childTable[@"subjectId"];
        NSString *subjectPlace = childTable[@"subjectPlace"];
        NSString *subjectTime = childTable[@"subjectTime"];
        NSString *subjectDate = childTable[@"subjectDate"];
        if ([subjectDate isEqualToString:ngayChon]) {
            i++;
            if (i == 1) {
                self.view1.hidden = NO;
//                self.lbMon1.text = subjectId;
//                self.lbTen1.text = subjectDate;
                self.lbTime1.text = subjectTime;
                self.lbPlace1.text = subjectPlace;
                for (NSDictionary *childSubject in subject) {
                    if ([childSubject[@"subjectId"] isEqualToString:subjectId]) {
                        self.lbMon1.text = childSubject[@"subjectName"];
                        self.lbTen1.text = childSubject[@"subjectTeacher"];
                    }
                }
            }
            if (i == 2) {
                self.view2.hidden = NO;
//                self.lbMon2.text = subjectId;
//                self.lbTen2.text = subjectDate;
                self.lbTime2.text = subjectTime;
                self.lbPlace2.text = subjectPlace;
                for (NSDictionary *childSubject in subject) {
                    if ([childSubject[@"subjectId"] isEqualToString:subjectId]) {
                        self.lbMon2.text = childSubject[@"subjectName"];
                        self.lbTen2.text = childSubject[@"subjectTeacher"];
                    }
                }
            }
            if (i == 3) {
                self.view3.hidden = NO;
//                self.lbMon3.text = subjectId;
//                self.lbTen3.text = subjectDate;
                self.lbTime3.text = subjectTime;
                self.lbPlace3.text = subjectPlace;
                for (NSDictionary *childSubject in subject) {
                    if ([childSubject[@"subjectId"] isEqualToString:subjectId]) {
                        self.lbMon3.text = childSubject[@"subjectName"];
                        self.lbTen3.text = childSubject[@"subjectTeacher"];
                    }
                }
            }
        }
    }
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
