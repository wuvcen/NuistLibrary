//
//  SearchBookList.h
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SearchBookList : NSObject
@property (strong, nonatomic) NSArray *bookList;    //list of 'ListBook'
@property (assign, nonatomic) NSUInteger currentPage;
@property (assign, nonatomic) NSUInteger totalPage;     //total items

+ (void)BookListWithData:(NSData *)data completionBlock:(void(^)(SearchBookList *))block;
- (BOOL)hasNextPage;
@end
