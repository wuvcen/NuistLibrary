//
//  NetWork.h
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetWork : NSObject

/**
 *  从指定url获取html data
 *
 *  @param url   string
 *  @param block 返回data 的block
 */
+ (void)dataFromURL:(NSString *)url completionBlock:(void (^)(NSData *,NSError *)) block;

@end
