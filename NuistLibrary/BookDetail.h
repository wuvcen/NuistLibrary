//
//  BookDetail.h
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/21.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookDetail : NSObject


/** feature ISBN唯一识别码，用于从 libBookDoubanURL API 读书获取书籍信息 */
@property (strong, nonatomic) NSString *ISBN;
/** 图书馆藏和可借信息*/
@property (strong, nonatomic) NSArray *storage;

/**
 *  异步获取图书详细信息
 *
 *  @param data   html data
 *  @param block  返回实例
 */
+ (void)BookdetailWithData:(NSData *)data completionBlock:(void (^)(BookDetail *))block;
@end
