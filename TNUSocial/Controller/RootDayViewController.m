//
//  RootDayViewController.m
//  TNUSocial
//
//  Created by Thieu Mao on 8/27/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import "RootDayViewController.h"
#import "DetailDayViewController.h"

@interface RootDayViewController ()
{
    NSMutableArray *viewControllers;
    
}

@end

@implementation RootDayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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
    // tao trang thu 0 va tren index cho no
    DetailDayViewController *initialViewController = [self viewControllerAtIndex:2];
    //
    [viewControllers addObject:initialViewController];
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    
    [[self view] addSubview:[self.pageController view]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    NSUInteger index=[(DetailDayViewController *)viewController index];
    if (index==0) {
        return nil;
    }
    index--;
    return [self viewControllerAtIndex:index];
}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSUInteger index=[(DetailDayViewController *)viewController index];
    index++;
    if (index==100) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}
-(DetailDayViewController *)viewControllerAtIndex:(NSUInteger)index{
    // đăng ký viewcontroller!
    DetailDayViewController *childViewcontroller=[[DetailDayViewController alloc]initWithNibName:@"DetailDayViewController"bundle:nil];
    childViewcontroller.index=index;
    return childViewcontroller;
}
//// count so luong o cham!!!
//-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController{
//    return 5;
//}
//// vi tri o bat dau!!!
//-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController{
//    return 0;
//}


@end
