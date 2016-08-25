//
//  UIColor+HexString.h
//  TNUSocial
//
//  Created by framgia on 8/25/16.
//  Copyright © 2016 OTVINA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexString)

+ (UIColor *)colorWithHexString:(NSString *)hexString;
+ (CGFloat)colorComponentFrom:(NSString *)string start:(NSUInteger)start length:(NSUInteger)length;

@end
