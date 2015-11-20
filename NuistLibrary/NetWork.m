//
//  NetWork.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "NetWork.h"

@implementation NetWork

+ (void)dataFromURL:(NSString *)url completionBlock:(void (^)(NSData *,NSError *))block {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSError *error;
        NSURL *targetUrl = [NSURL URLWithString:[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        NSLog(@"NSurl%@",targetUrl);
        NSData *data = [NSData dataWithContentsOfURL:targetUrl options:NSDataReadingUncached error:&error];
        if (block) {
            dispatch_async(dispatch_get_main_queue(), ^{
                block(data,error);
            });
        }
    });
}
@end
