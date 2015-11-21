//
//  ListBook.h
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

// describe books in main list

#import <Foundation/Foundation.h>

@interface ListBook : NSObject
/**
 *  标题
 */
@property (strong, nonatomic) NSString *title;
/** 可借 */
@property (strong, nonatomic) NSString *availble;
/** 地址 */
@property (strong, nonatomic) NSString *url;
/** 出版社 */
//@property (strong, nonatomic) NSString *press;

@end
