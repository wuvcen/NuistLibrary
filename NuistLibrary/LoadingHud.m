//
//  LoadingHud.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/22.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "LoadingHud.h"
#import "MDProgress.h"

@implementation LoadingHud
/**
 *  默认 init 为全屏幕大小
 */
- (instancetype)init {
    self = [super initWithFrame:[UIScreen mainScreen].bounds];
    if (self) {
        [self configSubView];
    }
    return self;
}

/**
 *  可自定义 init 大小,最好不要小于100 * 100
 */
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configSubView];
    }
    return self;
}

- (void)configSubView {
    self.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    MDProgress *progress = [[MDProgress alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [progress setType:0];
    [progress setStyle:0];
    progress.center = self.center;
    [self addSubview:progress];
}
@end
