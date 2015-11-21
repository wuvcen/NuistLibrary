//
//  SearchBookList.h
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SearchBookList : NSObject
/**
 *  ListBook 的实例列表
 */
@property (strong, nonatomic) NSArray *bookList;
/**
 *  当前页
 */
@property (assign, nonatomic) NSUInteger currentPage;
/**
 *  一共有多少页
 */
@property (assign, nonatomic) NSUInteger totalPage;
/**
 *  异步获取 图书一页图书列表
 *
 *  @param data   html data
 *  @param block  返回实例
 */
+ (void)BookListWithData:(NSData *)data completionBlock:(void(^)(SearchBookList *))block;
/**
 *  判断是否还有下一页
 *
 *  @return  BOOL 值
 */
- (BOOL)hasNextPage;
@end
