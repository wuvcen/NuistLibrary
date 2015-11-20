//
//  SearchBookList.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "SearchBookList.h"
#import "TFHpple.h"
@implementation SearchBookList

+ (void)BookListWithData:(NSData *)data completionBlock:(void (^)(SearchBookList *))block {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
#pragma mark TODO parse in background thread
    });
}

- (BOOL)hasNextPage {
    NSUInteger totalPage = ceil((double)self.total / (double)self.ipp);
    return totalPage > self.currentPage;
}
@end
