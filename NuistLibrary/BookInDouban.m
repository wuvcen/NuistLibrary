//
//  BookInDouban.m
//  NuistLibrary
//
//  Created by 吴伟城 on 15/11/21.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "BookInDouban.h"

@implementation BookInDouban

+(void)bookInDoubanWithDict:(NSDictionary *)dict completionBlock:(void (^)(BookInDouban *))block {
    BookInDouban *bookInDouban = [BookInDouban new];
//    [bookInDouban setValuesForKeysWithDictionary:dict];
    bookInDouban.title = dict[@"title"];
    bookInDouban.image = dict[@"image"];
    bookInDouban.author = dict[@"author_intro"];
    bookInDouban.summary = dict[@"summary"];
    bookInDouban.link = dict[@"link"];
    
    if (block) {
            block(bookInDouban);
    }
}

@end
