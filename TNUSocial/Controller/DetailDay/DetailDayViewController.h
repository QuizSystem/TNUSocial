//
//  DetailDayViewController.h
//  TNUSocial
//
//  Created by Thieu Mao on 8/28/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailDayViewController : UIViewController
@property (nonatomic, weak) IBOutlet UILabel *Screenindex;
@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) NSDate *dateSelected;
@end
