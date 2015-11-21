//
//  APIURL.h
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import <Foundation/Foundation.h>

#define libIndex @"http://lib2.nuist.edu.cn/opac/search.php"
#define libSearch @"http://lib2.nuist.edu.cn/opac/openlink.php?location=ALL&title={keyword}&doctype=ALL&lang_code=ALL&match_flag=forward&displaypg=10&showmode=list&orderby=DESC&sort=CATA_DATE&onlylendable=no&with_ebook=on&page={page}"
#define libBookDetailBaseURL @"http://lib2.nuist.edu.cn/opac/"
/** feature 用于查询 lib 中图书在豆瓣的位置*/
#define libBookDoubanInfo @"http://lib2.nuist.edu.cn/opac/ajax_douban.php?isbn={isbn}"