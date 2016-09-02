//
//  RootDayViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/27/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "RootDayViewController.h"
#import "DetailDayViewController.h"
#import "MyConst.h"
#import "StoreData.h"

@interface RootDayViewController ()
{
    NSMutableArray *viewControllers;
}

@end

@implementation RootDayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViewChildWithIndex:0];
    
//    NSDictionary *data = [StoreData getLichHoc];
//    // array semester
//    NSDictionary *semester = data[@"semester"];
//    // node current
//    NSDictionary *current = data[@"current"];
//    // child of node current
//    NSDictionary *subject = current[@"subject"];
//    NSDictionary *table = current[@"table"];
//    NSString *semesterString = current[@"semester"];
//    NSLog(@"table = %@", table);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    // Receive Notification
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(goTodayDetailDay)
        name:GO_TODAY_DETAIL_DAY object:nil];
}

- (void)goTodayDetailDay {
    self.dateSelected = [NSDate date];
    [self initViewChildWithIndex:0];
}

- (void)initViewChildWithIndex:(NSUInteger)index {
    viewControllers = [[NSMutableArray alloc]init];
    // Xác định Kiểu chuyển hướng và xác định hướng chuyển đổi!
    // Kiểu cuộn trang
    self.pageController = [[UIPageViewController alloc]
        initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll
            navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    // đăng ký dataSource !!!
    self.pageController.dataSource = self;
    // xet full Screen
    [[self.pageController view] setFrame:[[self view] bounds]];
    // tao trang thu index va tren index cho no
    DetailDayViewController *initialViewController = [self viewControllerAtIndex:index];
    //
    [viewControllers addObject:initialViewController];
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward
        animated:NO completion:nil];
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
    viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger index=[(DetailDayViewController *)viewController index];
    if (index == -300) {
        return nil;
    }
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
    viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger index = [(DetailDayViewController *)viewController index];
    index++;
    if (index == 300) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (DetailDayViewController *)viewControllerAtIndex:(NSUInteger)index{
    // đăng ký viewcontroller!
    DetailDayViewController *detailDayViewController =
        [[DetailDayViewController alloc]initWithNibName:@"DetailDayViewController" bundle:nil];
    
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingUnit:NSCalendarUnitDay value:index
        toDate:self.dateSelected options:0];

    detailDayViewController.index = index;
    detailDayViewController.dateSelected = newDate;
    
    return detailDayViewController;
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
