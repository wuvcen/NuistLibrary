//
//  Server.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "Server.h"
#import "NetWork.h"
#import "APIURL.h"
#import "ListBook.h"
#import "BookDetail.h"
#import "SearchBookList.h"

@implementation Server

+ (instancetype)sharedServer {
    static Server *server = nil;
    static dispatch_once_t oncetoke;
    dispatch_once(&oncetoke, ^{
        server = [[Server alloc] init];
    });
    
    return server;
}

- (void)getSearchBookListByKeyWord:(NSString *)keyword page:(NSNumber *)page completion:(void (^)(SearchBookList *, NSError *))block {
    NSString *url = [libSearch stringByReplacingOccurrencesOfString:@"{keyword}" withString:keyword];
    url = [url stringByReplacingOccurrencesOfString:@"{page}" withString:page.stringValue];
    NSLog(@"url is %@",url);
    [NetWork dataFromURL:url completionBlock:^(NSData *data,NSError *error){
        if (!error) {
            [SearchBookList BookListWithData:data completionBlock:^(SearchBookList *bookList){
                if (block) {
                    dispatch_async(dispatch_get_main_queue(), ^{
                        block(bookList, error);
                    });
                }
            }];
        }else {
            if (block) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    block(nil, error);
                });
            }
        }
    }];
}

- (void)getLibBookDetailByListBook:(ListBook *)listBook completion:(void (^)(BookDetail *, NSError *))block {
    NSString *url = [libBookDetailBaseURL stringByAppendingString:listBook.url];
    [NetWork dataFromURL:url completionBlock:^(NSData *data, NSError *error){
        if (!error) {
            [BookDetail BookdetailWithData:data completionBlock:^(BookDetail *bookDetail){
                if (block) {
                    dispatch_async(dispatch_get_main_queue(), ^{
                        block(bookDetail, nil);
                    });
                }
            }];
        }else {
            if (block) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    block(nil, error);
                });
            }
        }
    }];
}

@end
