//
//  RootDayViewController.h
//  TNUSocial
//
//  Created by Thieu Mao on 8/27/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootDayViewController : UIViewController <UIPageViewControllerDelegate>

@property (nonatomic, strong) UIPageViewController *pageController;
@property (nonatomic, strong) NSDate *dateSelected;

@end
