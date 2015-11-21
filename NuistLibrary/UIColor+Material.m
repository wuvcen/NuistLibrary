//
//  UIColor+Material.m
//  MaterialColor
//
//  Created by kei on 2014/12/23.
//  Copyright (c) 2014年 kei. All rights reserved.
//

#import "UIColor+Material.h"

@implementation UIColor (Material)


+ (UIColor *)colorWithHex:(NSString *)hexString{
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if ([cleanString length]==3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    
    if ([cleanString length]==6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned  int baseValue;
    [[NSScanner scannerWithString:cleanString]scanHexInt:&baseValue];
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) &0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    
}

+ (UIColor *)colorWithType:(ColorType)type number:(int)number{
    UIColor *color = [UIColor whiteColor];
    switch (type) {
        case ColorTypeRed:
            color = [UIColor redColorWithNumber:number];
            break;
            
            case ColorTypePink:
            color = [UIColor pinkColorWithNumber:number];
            break;
            
            case ColorTypePurple:
            color = [UIColor purpleColorWithNumber:number];
            break;
            
            case ColorTypeDeepPurple:
            color = [UIColor purpleColorWithNumber:number];
            break;
            
            case ColorTypeIndigo:
            color = [UIColor indigoColorWithNumber:number];
            break;
            
            case ColorTypeBlue:
            color = [UIColor blueColorWithNumber:number];
            break;
            
            case ColorTypeLightBlue:
           color =  [UIColor lightBlueColorWithNumber:number];
            break;
            
            case ColorTypeCyan:
            color = [UIColor cyanColorWithNumber:number];
            break;
            
            case ColorTypeTeal:
            color = [UIColor tealColorWithNumber:number];
            break;
            
            case ColorTypeGreen:
            color = [UIColor greenColorWithNumber:number];
            break;
            
            case ColorTypeLightGreen:
           color =  [UIColor lightGreenColorWithNumber:number];
            break;
            
            case ColorTypeLime:
           color =  [UIColor limeColorWithNumber:number];
            break;
            
            case ColorTypeYellow:
            color = [UIColor yellowColorWithNumber:number];
            break;
            
            case ColorTypeAmber:
            color = [UIColor amberColorWithNumber:number];
            break;
            
            case ColorTypeOrange:
            color = [UIColor orangeColorWithNumber:number];
            break;
            
            case ColorTypeDeepOrange:
            color = [UIColor deepOrangeColorWithNumber:number];
            break;
            
            case ColorTypeBrown:
            color = [UIColor brownColorWithNumber:number];
            break;
            
            case ColorTypeGrey:
            color = [UIColor greyColorWithNumber:number];
            break;
            
            case ColorTypeBlueGrey:
            color = [UIColor blueGreyColorWithNumber:number];
            break;
            
        default:
            break;
    }
    return color;
}

+ (UIColor *)redColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#FFEBEE";
            break;
        case 100:
            hex = @"#FFCDD2";
            break;
        case 200:
            hex = @"#EF9A9A";
            break;
        case 300:
            hex = @"#E57373";
            break;
        case 400:
            hex = @"#EF5350";
            break;
        case 500:
            hex = @"#F44336";
            break;
        case 600:
            hex = @"#E53935";
            break;
        case 700:
            hex = @"#D32F2F";
            break;
        case 800:
            hex = @"#C62828";
            break;
        case 900:
            hex = @"#B71C1C";
            break;
        case 1000:
            hex = @"#FF8A80";
            break;
        case 2000:
            hex = @"#FF5252";
            break;
        case 4000:
            hex = @"#FF1744";
            break;
        case 7000:
            hex = @"#D50000";
            break;
            
        default:
            hex = @"#F44336";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)pinkColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#FCE4EC";
            break;
        case 100:
            hex = @"#F8BBD0";
            break;
        case 200:
            hex = @"#F48FB1";
            break;
        case 300:
            hex = @"#F06292";
            break;
        case 400:
            hex = @"#EC407A";
            break;
        case 500:
            hex = @"#E91E63";
            break;
        case 600:
            hex = @"#D81B60";
            break;
        case 700:
            hex = @"#C2185B";
            break;
        case 800:
            hex = @"#AD1457";
            break;
        case 900:
            hex = @"#880E4F";
            break;
        case 1000:
            hex = @"#FF80AB";
            break;
        case 2000:
            hex = @"#FF4081";
            break;
        case 4000:
            hex = @"#F50057";
            break;
        case 7000:
            hex = @"#C51162";
            break;
            
        default:
            hex = @"#E91E63";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)purpleColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#F3E5F5";
            break;
        case 100:
            hex = @"#E1BEE7";
            break;
        case 200:
            hex = @"#CE93D8";
            break;
        case 300:
            hex = @"#BA68C8";
            break;
        case 400:
            hex = @"#AB47BC";
            break;
        case 500:
            hex = @"#9C27B0";
            break;
        case 600:
            hex = @"#8E24AA";
            break;
        case 700:
            hex = @"#7B1FA2";
            break;
        case 800:
            hex = @"#6A1B9A";
            break;
        case 900:
            hex = @"#4A148C";
            break;
        case 1000:
            hex = @"#EA80FC";
            break;
        case 2000:
            hex = @"#E040FB";
            break;
        case 4000:
            hex = @"#D500F9";
            break;
        case 7000:
            hex = @"#AA00FF";
            break;
            
        default:
            hex = @"#9C27B0";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)deepPurpleColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#EDE7F6";
            break;
        case 100:
            hex = @"#D1C4E9";
            break;
        case 200:
            hex = @"#B39DDB";
            break;
        case 300:
            hex = @"#9575CD";
            break;
        case 400:
            hex = @"#7E57C2";
            break;
        case 500:
            hex = @"#673AB7";
            break;
        case 600:
            hex = @"#5E35B1";
            break;
        case 700:
            hex = @"#512DA8";
            break;
        case 800:
            hex = @"#4527A0";
            break;
        case 900:
            hex = @"#311B92";
            break;
        case 1000:
            hex = @"#B388FF";
            break;
        case 2000:
            hex = @"#7C4DFF";
            break;
        case 4000:
            hex = @"#651FFF";
            break;
        case 7000:
            hex = @"#6200EA";
            break;
            
        default:
            hex = @"#673AB7";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)indigoColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#E8EAF6";
            break;
        case 100:
            hex = @"#C5CAE9";
            break;
        case 200:
            hex = @"#9FA8DA";
            break;
        case 300:
            hex = @"#7986CB";
            break;
        case 400:
            hex = @"#5C6BC0";
            break;
        case 500:
            hex = @"#3F51B5";
            break;
        case 600:
            hex = @"#3949AB";
            break;
        case 700:
            hex = @"#303F9F";
            break;
        case 800:
            hex = @"#283593";
            break;
        case 900:
            hex = @"#1A237E";
            break;
        case 1000:
            hex = @"#8C9EFF";
            break;
        case 2000:
            hex = @"#536DFE";
            break;
        case 4000:
            hex = @"#3D5AFE";
            break;
        case 7000:
            hex = @"#304FFE";
            break;
            
        default:
            hex = @"#3F51B5";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)blueColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#E3F2FD";
            break;
        case 100:
            hex = @"#BBDEFB";
            break;
        case 200:
            hex = @"#90CAF9";
            break;
        case 300:
            hex = @"#64B5F6";
            break;
        case 400:
            hex = @"#42A5F5";
            break;
        case 500:
            hex = @"#2196F3";
            break;
        case 600:
            hex = @"#1E88E5";
            break;
        case 700:
            hex = @"#1976D2";
            break;
        case 800:
            hex = @"#1565C0";
            break;
        case 900:
            hex = @"#0D47A1";
            break;
        case 1000:
            hex = @"#82B1FF";
            break;
        case 2000:
            hex = @"#448AFF";
            break;
        case 4000:
            hex = @"#2979FF";
            break;
        case 7000:
            hex = @"#2962FF";
            break;
            
        default:
            hex = @"#2196F3";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)lightBlueColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#E1F5FE";
            break;
        case 100:
            hex = @"#B3E5FC";
            break;
        case 200:
            hex = @"#81D4FA";
            break;
        case 300:
            hex = @"#4FC3F7";
            break;
        case 400:
            hex = @"#29B6F6";
            break;
        case 500:
            hex = @"#03A9F4";
            break;
        case 600:
            hex = @"#039BE5";
            break;
        case 700:
            hex = @"#0288D1";
            break;
        case 800:
            hex = @"#0277BD";
            break;
        case 900:
            hex = @"#01579B";
            break;
        case 1000:
            hex = @"#80D8FF";
            break;
        case 2000:
            hex = @"#40C4FF";
            break;
        case 4000:
            hex = @"#00B0FF";
            break;
        case 7000:
            hex = @"#0091EA";
            break;
            
        default:
            hex = @"#03A9F4";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)cyanColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#E0F7FA";
            break;
        case 100:
            hex = @"#B2EBF2";
            break;
        case 200:
            hex = @"#80DEEA";
            break;
        case 300:
            hex = @"#4DD0E1";
            break;
        case 400:
            hex = @"#26C6DA";
            break;
        case 500:
            hex = @"#00BCD4";
            break;
        case 600:
            hex = @"#00ACC1";
            break;
        case 700:
            hex = @"#0097A7";
            break;
        case 800:
            hex = @"#00838F";
            break;
        case 900:
            hex = @"#006064";
            break;
        case 1000:
            hex = @"#84FFFF";
            break;
        case 2000:
            hex = @"#18FFFF";
            break;
        case 4000:
            hex = @"#00E5FF";
            break;
        case 7000:
            hex = @"#00B8D4";
            break;
            
        default:
            hex = @"#00BCD4";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)tealColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#E0F2F1";
            break;
        case 100:
            hex = @"#B2DFDB";
            break;
        case 200:
            hex = @"#80CBC4";
            break;
        case 300:
            hex = @"#4DB6AC";
            break;
        case 400:
            hex = @"#26A69A";
            break;
        case 500:
            hex = @"#009688";
            break;
        case 600:
            hex = @"#00897B";
            break;
        case 700:
            hex = @"#00796B";
            break;
        case 800:
            hex = @"#00695C";
            break;
        case 900:
            hex = @"#004D40";
            break;
        case 1000:
            hex = @"#A7FFEB";
            break;
        case 2000:
            hex = @"#64FFDA";
            break;
        case 4000:
            hex = @"#1DE9B6";
            break;
        case 7000:
            hex = @"#00BFA5";
            break;
            
        default:
            hex = @"#009688";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)greenColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#E8F5E9";
            break;
        case 100:
            hex = @"#C8E6C9";
            break;
        case 200:
            hex = @"#A5D6A7";
            break;
        case 300:
            hex = @"#81C784";
            break;
        case 400:
            hex = @"#66BB6A";
            break;
        case 500:
            hex = @"#4CAF50";
            break;
        case 600:
            hex = @"#43A047";
            break;
        case 700:
            hex = @"#388E3C";
            break;
        case 800:
            hex = @"#2E7D32";
            break;
        case 900:
            hex = @"#1B5E20";
            break;
        case 1000:
            hex = @"#B9F6CA";
            break;
        case 2000:
            hex = @"#69F0AE";
            break;
        case 4000:
            hex = @"#00E676";
            break;
        case 7000:
            hex = @"#00C853";
            break;
            
        default:
            hex = @"#4CAF50";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)lightGreenColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#F1F8E9";
            break;
        case 100:
            hex = @"#DCEDC8";
            break;
        case 200:
            hex = @"#C5E1A5";
            break;
        case 300:
            hex = @"#AED581";
            break;
        case 400:
            hex = @"#9CCC65";
            break;
        case 500:
            hex = @"#8BC34A";
            break;
        case 600:
            hex = @"#7CB342";
            break;
        case 700:
            hex = @"#689F38";
            break;
        case 800:
            hex = @"#558B2F";
            break;
        case 900:
            hex = @"#33691E";
            break;
        case 1000:
            hex = @"#CCFF90";
            break;
        case 2000:
            hex = @"#B2FF59";
            break;
        case 4000:
            hex = @"#76FF03";
            break;
        case 7000:
            hex = @"#64DD17";
            break;
            
        default:
            hex = @"#8BC34A";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)limeColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#F9FBE7";
            break;
        case 100:
            hex = @"#F0F4C3";
            break;
        case 200:
            hex = @"#E6EE9C";
            break;
        case 300:
            hex = @"#DCE775";
            break;
        case 400:
            hex = @"#D4E157";
            break;
        case 500:
            hex = @"#CDDC39";
            break;
        case 600:
            hex = @"#C0CA33";
            break;
        case 700:
            hex = @"#AFB42B";
            break;
        case 800:
            hex = @"#9E9D24";
            break;
        case 900:
            hex = @"#827717";
            break;
        case 1000:
            hex = @"#F4FF81";
            break;
        case 2000:
            hex = @"#EEFF41";
            break;
        case 4000:
            hex = @"#C6FF00";
            break;
        case 7000:
            hex = @"#AEEA00";
            break;
            
        default:
            hex = @"#CDDC39";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)yellowColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#FFFDE7";
            break;
        case 100:
            hex = @"#FFF9C4";
            break;
        case 200:
            hex = @"#FFF59D";
            break;
        case 300:
            hex = @"#FFF176";
            break;
        case 400:
            hex = @"#FFEE58";
            break;
        case 500:
            hex = @"#FFEB3B";
            break;
        case 600:
            hex = @"#FDD835";
            break;
        case 700:
            hex = @"#FBC02D";
            break;
        case 800:
            hex = @"#F9A825";
            break;
        case 900:
            hex = @"#F57F17";
            break;
        case 1000:
            hex = @"#FFFF8D";
            break;
        case 2000:
            hex = @"#FFFF00";
            break;
        case 4000:
            hex = @"#FFEA00";
            break;
        case 7000:
            hex = @"#FFD600";
            break;
            
        default:
            hex = @"#FFEB3B";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)amberColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#FFF8E1";
            break;
        case 100:
            hex = @"#FFECB3";
            break;
        case 200:
            hex = @"#FFE082";
            break;
        case 300:
            hex = @"#FFD54F";
            break;
        case 400:
            hex = @"#FFCA28";
            break;
        case 500:
            hex = @"#FFC107";
            break;
        case 600:
            hex = @"#FFB300";
            break;
        case 700:
            hex = @"#FFA000";
            break;
        case 800:
            hex = @"#FF8F00";
            break;
        case 900:
            hex = @"#FF6F00";
            break;
        case 1000:
            hex = @"#FFE57F";
            break;
        case 2000:
            hex = @"#FFD740";
            break;
        case 4000:
            hex = @"#FFC400";
            break;
        case 7000:
            hex = @"#FFAB00";
            break;
            
        default:
            hex = @"#FFC107";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)orangeColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#FFF3E0";
            break;
        case 100:
            hex = @"#FFE0B2";
            break;
        case 200:
            hex = @"#FFCC80";
            break;
        case 300:
            hex = @"#FFB74D";
            break;
        case 400:
            hex = @"#FFA726";
            break;
        case 500:
            hex = @"#FF9800";
            break;
        case 600:
            hex = @"#FB8C00";
            break;
        case 700:
            hex = @"#F57C00";
            break;
        case 800:
            hex = @"#EF6C00";
            break;
        case 900:
            hex = @"#E65100";
            break;
        case 1000:
            hex = @"#FFD180";
            break;
        case 2000:
            hex = @"#FFAB40";
            break;
        case 4000:
            hex = @"#FF9100";
            break;
        case 7000:
            hex = @"#FF6D00";
            break;
            
        default:
            hex = @"#FF9800";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)deepOrangeColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#FBE9E7";
            break;
        case 100:
            hex = @"#FFCCBC";
            break;
        case 200:
            hex = @"#FFAB91";
            break;
        case 300:
            hex = @"#FF8A65";
            break;
        case 400:
            hex = @"#FF7043";
            break;
        case 500:
            hex = @"#FF5722";
            break;
        case 600:
            hex = @"#F4511E";
            break;
        case 700:
            hex = @"#E64A19";
            break;
        case 800:
            hex = @"#D84315";
            break;
        case 900:
            hex = @"#BF360C";
            break;
        case 1000:
            hex = @"#FF9E80";
            break;
        case 2000:
            hex = @"#FF6E40";
            break;
        case 4000:
            hex = @"#FF3D00";
            break;
        case 7000:
            hex = @"#DD2C00";
            break;
            
        default:
            hex = @"#FF5722";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)brownColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#EFEBE9";
            break;
        case 100:
            hex = @"#D7CCC8";
            break;
        case 200:
            hex = @"#BCAAA4";
            break;
        case 300:
            hex = @"#A1887F";
            break;
        case 400:
            hex = @"#8D6E63";
            break;
        case 500:
            hex = @"#795548";
            break;
        case 600:
            hex = @"#6D4C41";
            break;
        case 700:
            hex = @"#5D4037";
            break;
        case 800:
            hex = @"#4E342E";
            break;
        case 900:
            hex = @"#3E2723";
            break;
    
            
        default:
            hex = @"#795548";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)greyColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#FAFAFA";
            break;
        case 100:
            hex = @"#F5F5F5";
            break;
        case 200:
            hex = @"#EEEEEE";
            break;
        case 300:
            hex = @"#E0E0E0";
            break;
        case 400:
            hex = @"#BDBDBD";
            break;
        case 500:
            hex = @"#9E9E9E";
            break;
        case 600:
            hex = @"#757575";
            break;
        case 700:
            hex = @"#616161";
            break;
        case 800:
            hex = @"#424242";
            break;
        case 900:
            hex = @"#212121";
            break;
     
            
        default:
            hex = @"#9E9E9E";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

+ (UIColor *)blueGreyColorWithNumber:(int)number{
    NSString *hex =@"";
    switch (number) {
        case 50:
            hex = @"#ECEFF1";
            break;
        case 100:
            hex = @"#CFD8DC";
            break;
        case 200:
            hex = @"#B0BEC5";
            break;
        case 300:
            hex = @"#90A4AE";
            break;
        case 400:
            hex = @"#78909C";
            break;
        case 500:
            hex = @"#607D8B";
            break;
        case 600:
            hex = @"#546E7A";
            break;
        case 700:
            hex = @"#455A64";
            break;
        case 800:
            hex = @"#37474F";
            break;
        case 900:
            hex = @"#263238";
            break;
    
            
        default:
            hex = @"#607D8B";

            break;
    }
    
    
    return [UIColor colorWithHex:hex];
}

@end
