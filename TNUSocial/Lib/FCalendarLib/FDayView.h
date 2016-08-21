//
//  FDayView.h
//  TNUSocial
//
//  Created by Thieu Mao on 8/21/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FDayView : UIButton
@property (strong, nonatomic) UIView *subview;
- (void)showSubView:(BOOL)show;
@end
