//
//  UIColor+IDPWebColor.m
//  UIColor+IDPWebColor
//
//  Created by 能登 要 on 2014/05/06.
//  Copyright (c) 2014年 Irimasu Densan Planning. All rights reserved.
//

#import "UIColor+IDPWebColor.h"

static NSDictionary *s_paletteColor = nil;

@implementation UIColor (WebColor)

+ (UIColor *)colorWithWebColor:(NSString *)webColor
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_paletteColor = @{  @"0":@0
                             ,@"1":@1
                             ,@"2":@2
                             ,@"3":@3
                             ,@"4":@4
                             ,@"5":@5
                             ,@"6":@6
                             ,@"7":@7
                             ,@"8":@8
                             ,@"9":@9
                             ,@"A":@10
                             ,@"B":@11
                             ,@"C":@12
                             ,@"D":@13
                             ,@"E":@14
                             ,@"F":@15
                             };
    });
    
    double red = .0f;
    double green = .0f;
    double blue = .0f;
    
    if( webColor.length == 7 ){
        red = ([s_paletteColor[[webColor substringWithRange:NSMakeRange(1, 1)]] doubleValue] * 16
                          + [s_paletteColor[[webColor substringWithRange:NSMakeRange(2, 1)]] doubleValue]) / 255.0f;
        
        green = ([s_paletteColor[[webColor substringWithRange:NSMakeRange(3, 1)]] doubleValue] * 16
                            + [s_paletteColor[[webColor substringWithRange:NSMakeRange(4, 1)]] doubleValue]) / 255.0f;
        
        blue = ([s_paletteColor[[webColor substringWithRange:NSMakeRange(5, 1)]] doubleValue] * 16
                           + [s_paletteColor[[webColor substringWithRange:NSMakeRange(6, 1)]] doubleValue]) / 255.0f;
    }else if(webColor.length == 4){
        red = ([s_paletteColor[[webColor substringWithRange:NSMakeRange(1, 1)]] doubleValue]);
        red = red * 16 + red;
        red /= 255.0f;
        
        green = ([s_paletteColor[[webColor substringWithRange:NSMakeRange(2, 1)]] doubleValue]);
        green = green * 16 + green;
        green /= 255.0f;
        
        blue = ([s_paletteColor[[webColor substringWithRange:NSMakeRange(3, 1)]] doubleValue]);
        blue = blue * 16 + blue;
        blue /= 255.0f;
    }
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];}

@end
