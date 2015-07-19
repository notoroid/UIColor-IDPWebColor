//
//  UIColor+IDPWebColor.h
//  UIColor+IDPWebColor
//
//  Created by 能登 要 on 2014/05/06.
//  Copyright (c) 2014年 Irimasu Densan Planning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (WebColor)

/**
 *  generate web color
 *
 *  @param webColor #rgb or #rrggbb
 *
 *  @return UIColor instance.
 */
+ (UIColor *)colorWithWebColor:(NSString *)webColor;

@end
