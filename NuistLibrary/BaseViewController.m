//
//  BaseViewController.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/21.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "BaseViewController.h"
#import "MobClick.h"
#import "LoadingHud.h"
@interface BaseViewController ()
@property (strong, nonatomic) LoadingHud *hud;
@end

@implementation BaseViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [MobClick beginLogPageView:NSStringFromClass([self class])];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [MobClick endLogPageView:NSStringFromClass([self class])];
}
- (void)showLoding {
    [self.view addSubview:self.hud];
}
- (void)dismissLoading {
    [self.hud removeFromSuperview];
}

- (LoadingHud *)hud {
    if (!_hud) {
        _hud = [LoadingHud new];
    }
    return _hud;
}
@end
