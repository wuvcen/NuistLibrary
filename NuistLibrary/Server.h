//
//  Server.h
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NXServer [Server sharedServer]

@class SearchBookList;

@interface Server : NSObject

/**
 *  获得单例对象
 */
+ (instancetype)sharedServer;

/**
 *  通过关键字搜索书籍，获取返回的书籍信息
 *
 *  @param keyword
 *  @param block   返回书籍信息
 */
- (void)getSearchBookListByKeyWord:(NSString *)keyword completion:(void (^)(SearchBookList *, NSError *))block;
@end
