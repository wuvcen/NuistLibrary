//
//  BookInDouban.h
//  NuistLibrary
//
//  Created by 吴伟城 on 15/11/21.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookInDouban : NSObject

/// 标题
@property (nonatomic, copy) NSString *title;

/// 作者
@property (nonatomic, copy) NSString *author;

/// 图片
@property (nonatomic, copy) NSString *image;

/// 简介
@property (nonatomic, copy) NSString *summary;

/// 豆瓣链接
@property (nonatomic, copy) NSString *link;

/// 评论
@property (nonatomic, copy) NSString *comment;

/**
 *  获取豆瓣书籍信息
 *
 *  @param dict  从网页加载的 json 转换为的字典
 *  @param block 返回 BookInDouban
 */
+ (void)bookInDoubanWithDict:(NSDictionary *)dict completionBlock:(void (^)(BookInDouban *))block;

@end
