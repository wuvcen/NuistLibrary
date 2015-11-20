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
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *serialNumber;
@property (strong, nonatomic) NSString *press;          /** 出版社 */
@property (strong, nonatomic) NSString *language;       /** 中文还是外文图书 */
@property (strong, nonatomic) NSString *storage;        /** 馆藏 */
@property (strong, nonatomic) NSString *availble;       /** 可借 */
@end
