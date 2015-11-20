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

- (void)getSearchBookListByKeyWord:(NSString *)keyword completion:(void (^)(SearchBookList *))block {
#pragma mark TODO getSearchBookList
}

@end
