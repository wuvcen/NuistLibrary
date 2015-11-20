//
//  ViewController.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/20.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "ViewController.h"
#import "SearchBookList.h"
#import "ListBook.h"
#import "Server.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NXServer getSearchBookListByKeyWord:@"编程" completion:^(SearchBookList *bookList, NSError *error){
        for (ListBook *book in bookList.bookList) {
            NSLog(@"%@,%@",book.title,book.availble);
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
