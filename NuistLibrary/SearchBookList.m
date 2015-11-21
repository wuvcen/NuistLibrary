//
//  SearchBookList.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "SearchBookList.h"
#import "ListBook.h"
#import "TFHpple.h"

@implementation SearchBookList

+ (void)BookListWithData:(NSData *)data completionBlock:(void (^)(SearchBookList *))block {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        SearchBookList *returnBookList = [SearchBookList new];
        NSMutableArray *bookList = [NSMutableArray new];
        TFHpple *doc = [[TFHpple alloc] initWithHTMLData:data];
        NSArray *elements = [doc searchWithXPathQuery:@"//li[@class='book_list_info']"];
        @autoreleasepool {
            for (TFHppleElement *node in elements) {
                ListBook *book = [ListBook new];
                
                TFHppleElement *h3 = [node firstChildWithTagName:@"h3"];
                book.title = [h3 firstChildWithTagName:@"a"].content;
                book.url = [[h3 firstChildWithTagName:@"a"] objectForKey:@"href"];
                
                TFHppleElement *p = [node firstChildWithTagName:@"p"];
                book.availble = [p firstChildWithTagName:@"span"].content;
                
                [bookList addObject:book];
            }
        }
        returnBookList.bookList = bookList;
        
        NSArray *currentgePage = [doc searchWithXPathQuery:@"//*[@id='num']/span/b/font[1]"];
        if (currentgePage.count >= 1) {
            TFHppleElement *currentNode = currentgePage.firstObject;
            returnBookList.currentPage = currentNode.content.integerValue;
        }
        
        NSArray *totalPage = [doc searchWithXPathQuery:@"//*[@id='num']/span/b/font[2]"];
        if (totalPage.count >= 1) {
            TFHppleElement *currentNode = totalPage.firstObject;
            returnBookList.totalPage = currentNode.content.integerValue;
        }
        
        if (block) {
            dispatch_async(dispatch_get_main_queue(), ^{
                block(returnBookList);
            });
        }
        
    });
}

#pragma mark TODO hasNextPage
- (BOOL)hasNextPage {
    return self.totalPage > self.currentPage;
}
@end
