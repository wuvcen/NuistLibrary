//
//  BaseViewController.h
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/21.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
/**
 *  显示 loading hud
 */
- (void)showLoding;
/**
 *  dismiis loading hud
 */
- (void)dismissLoading;
@end
