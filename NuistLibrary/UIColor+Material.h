//
//  UIColor+Material.h
//  MaterialColor
//
//  Created by kei on 2014/12/23.
//  Copyright (c) 2014年 kei. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    ColorTypeRed,
    ColorTypePink,
    ColorTypePurple,
    ColorTypeDeepPurple,
    ColorTypeIndigo,
    ColorTypeBlue,
    ColorTypeLightBlue,
    ColorTypeCyan,
    ColorTypeTeal,
    ColorTypeGreen,
    ColorTypeLightGreen,
    ColorTypeLime,
    ColorTypeYellow,
    ColorTypeAmber,
    ColorTypeOrange,
    ColorTypeDeepOrange,
    ColorTypeBrown,
    ColorTypeGrey,
    ColorTypeBlueGrey,
    
}ColorType;

@interface UIColor (Material)

+ (UIColor *)colorWithHex:(NSString *)hexString;

+ (UIColor *)colorWithType:(ColorType)type number:(int)number;

+ (UIColor *)redColorWithNumber:(int)number;
+ (UIColor *)pinkColorWithNumber:(int)number;
+ (UIColor *)purpleColorWithNumber:(int)number;
+ (UIColor *)deepPurpleColorWithNumber:(int)number;
+ (UIColor *)indigoColorWithNumber:(int)number;
+ (UIColor *)blueColorWithNumber:(int)number;
+ (UIColor *)lightBlueColorWithNumber:(int)number;
+ (UIColor *)cyanColorWithNumber:(int)number;
+ (UIColor *)tealColorWithNumber:(int)number;
+ (UIColor *)greenColorWithNumber:(int)number;
+ (UIColor *)lightGreenColorWithNumber:(int)number;
+ (UIColor *)limeColorWithNumber:(int)number;
+ (UIColor *)yellowColorWithNumber:(int)number;
+ (UIColor *)amberColorWithNumber:(int)number;
+ (UIColor *)orangeColorWithNumber:(int)number;
+ (UIColor *)deepOrangeColorWithNumber:(int)number;
+ (UIColor *)brownColorWithNumber:(int)number;
+ (UIColor *)greyColorWithNumber:(int)number;
+ (UIColor *)blueGreyColorWithNumber:(int)number;



@end
