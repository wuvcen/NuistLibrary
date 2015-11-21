//
//  AppDelegate.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "AppDelegate.h"
#import "MobClick.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self configUmeng];
    return YES;
}

- (void)configUmeng {
    [MobClick startWithAppkey:@"5650363867e58e3d5a00a203" reportPolicy:BATCH channelId:@"pre.im"];
    [MobClick setEncryptEnabled:YES];
    [MobClick setBackgroundTaskEnabled:NO];
    
}
@end
