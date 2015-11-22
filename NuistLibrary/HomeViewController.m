//
//  HomeViewController.m
//  NuistLibrary
//
//  Created by 王志龙 on 15/11/21.
//  Copyright © 2015年 王志龙. All rights reserved.
//

#import "HomeViewController.h"
#import "Server.h"
#import "BookDetail.h"
#import "ListBook.h"
#import "SearchBookList.h"
#import "LoadingHud.h"
#import "BookInDouban.h"
#define reuseIdentifier @"demo"

@interface HomeViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *tableData;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    [self showLoding];
    [NXServer getSearchBookListByKeyWord:@"编程" page:@1 completion:^(SearchBookList *list, NSError *error){
        [self dismissLoading];
        if (!error) {
            [self.tableData addObjectsFromArray:list.bookList];
            [self.tableView reloadData];
        }
    }];
    [NXServer getBookInDoubanByISBN:@"978-7-115-38776-9" completion:^(BookInDouban *bookInDouban, NSError *error) {
        if (!error) {
            NSLog(@"%@", bookInDouban.link);
        }
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    ListBook *book = self.tableData[indexPath.row];
    cell.textLabel.text = book.title;
    cell.detailTextLabel.text = [book.availble stringByReplacingOccurrencesOfString:@"\r\n" withString:@""];
    return cell;
}

- (NSMutableArray *)tableData {
    if (!_tableData) {
        _tableData = [NSMutableArray new];
    }
    return _tableData;
}
@end
