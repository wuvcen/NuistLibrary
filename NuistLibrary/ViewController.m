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
    [NXServer getSearchBookListByKeyWord:@"爱情" page:@1 completion:^(SearchBookList *list ,NSError *error){
        if (!error) {
            for (ListBook *book in list.bookList) {
                NSLog(@"book %@",book.title);
            }
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
