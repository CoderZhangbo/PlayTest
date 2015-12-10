//
//  ViewController.m
//  PlayTest
//
//  Created by 张波 on 15/12/4.
//  Copyright © 2015年 张波. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *my_table;
@property (weak, nonatomic) IBOutlet UILabel *my_label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _my_table.tableFooterView = [UIView new];
    if ([_my_table respondsToSelector:@selector(setSeparatorInset:)]) {
        [_my_table setSeparatorInset:UIEdgeInsetsMake(0,0,0,0)];
    }
    
    if ([_my_table respondsToSelector:@selector(setLayoutMargins:)]) {
        [_my_table setLayoutMargins:UIEdgeInsetsMake(0,0,0,0)];
    }
    
    self.my_label.text = @"kjskjfoisjfoijaojoiaj";
    
    NSLog(@"到底是什么情况");
    NSLog(@"怎么回事");
    NSLog(@"我去");


    
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reuseIdentifier"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld行", indexPath.row];
    // Configure the cell...
    
    return cell;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
