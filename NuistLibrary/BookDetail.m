//
//  BookDetail.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/21.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "BookDetail.h"
#import "TFHpple.h"
@implementation BookDetail

+ (void)BookdetailWithData:(NSData *)data completionBlock:(void (^)(BookDetail *))block {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        BookDetail *detailBook = [BookDetail new];
        TFHpple *hppleDoc = [[TFHpple alloc] initWithHTMLData:data];
        NSArray *isnbNode = [hppleDoc searchWithXPathQuery:@"//*[@id='item_detail']/dl[3]/dd"];
        if (isnbNode.count > 0) {
            TFHppleElement *node = isnbNode.firstObject;
            detailBook.ISBN = [[node.content stringByDeletingLastPathComponent] stringByReplacingOccurrencesOfString:@"-" withString:@""];
        }
        NSArray *lendNode = [hppleDoc searchWithXPathQuery:@"//*[@id='item']/tr"];
        NSMutableArray *storage_book = [NSMutableArray new];
        if (lendNode.count >= 2) {
            @autoreleasepool {
                for (NSInteger i = 1; i < lendNode.count; ++i) {
                    TFHppleElement *childLendNode = lendNode[i];
                    NSArray *tds = [childLendNode searchWithXPathQuery:@"//td"];
                    if (tds.count >= 5) {
                        TFHppleElement *lendBookNO = tds[0];
                        TFHppleElement *addressInLib = tds[3];
                        TFHppleElement *bookStatus = tds[4];
                        NSDictionary *lendBookInfo = @{@"索书号":lendBookNO.content,@"馆藏地址":addressInLib.content,@"书刊状态":bookStatus.content};
                        [storage_book addObject:lendBookInfo];
                    }
                }
            }
        }
        detailBook.storage = storage_book;
        if (block) {
            dispatch_async(dispatch_get_main_queue(), ^{
                block(detailBook);
            });
        }
        
    });
}
@end
