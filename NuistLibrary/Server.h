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
@class ListBook;
@class BookDetail;
@class BookInDouban;

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
- (void)getSearchBookListByKeyWord:(NSString *)keyword page:(NSNumber *)page completion:(void (^)(SearchBookList *, NSError *))block;

/**
 *  通过 ListBook 获得 BookDetail
 *
 *  @param listBook ListBook 实例
 *  @param block    返回 BookDetail
 */
- (void)getLibBookDetailByListBook:(ListBook *)listBook completion:(void (^)(BookDetail *,NSError *))block;

/**
 *  通过ISBN在豆瓣上查询书籍
 *
 *  @param isbn  isbn
 *  @param block 返回 BookInDouban
 */
- (void)getBookInDoubanByISBN:(NSString *)isbn completion:(void (^)(BookInDouban *, NSError *))block;
@end
