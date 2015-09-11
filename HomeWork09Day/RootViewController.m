//
//  RootViewController.m
//  HomeWork09Day
//
//  Created by lxh on 15/9/5.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "RootView.h"
#import "NextViewController.h"
@interface RootViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) RootView * rv;

@property (nonatomic, strong) NSMutableArray * mutabArray;

@property (nonatomic, strong) NSMutableArray * imageArray;
@end

@implementation RootViewController

-(void)loadView {
    self.rv = [[RootView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.view = self.rv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置代理 和数据
    self.rv.tableView.delegate = self;
    self.rv.tableView.dataSource = self;
    
    
    // 创建 数据
    self.mutabArray = [NSMutableArray array];
    
    self.imageArray = [NSMutableArray array];
    
    // 设置title
    self.navigationItem.title = @"Settings";
    
    // 添加 数据
    NSMutableArray * array1 = @[@"General",@"Provacy"].mutableCopy;
    
    NSMutableArray * array2 = @[@"iCloud",@"Maps",@"Safari",@"Photos & Camera",@"Game Center"].mutableCopy;
    
    NSMutableArray * array3 = @[@"Twitter",@"Facebook",@"Flickr",@"Vimeo"].mutableCopy;
    
    NSMutableArray * array4 = @[@"Developer"].mutableCopy;
    
    // 添加图片
    NSMutableArray * image1 = @[@"iphone_0000.jpg",@"iphone_0001.jpg"].mutableCopy;
    
    NSMutableArray * image2 = @[@"iphone_0002.jpg",@"iphone_0003.jpg",@"iphone_0004.jpg",@"iphone_0005.jpg",@"iphone_0006.jpg"].mutableCopy;
    
    NSMutableArray * image3 = @[@"iphone_0007.jpg",@"iphone_0008.jpg",@"iphone_0009.jpg",@"iphone_0010.jpg"].mutableCopy;
    
    NSMutableArray * image4 = @[@"iphone_0011.jpg"].mutableCopy;
    
    // 添加 到mutabArray数组中
    self.mutabArray = @[array1,array2,array3,array4].mutableCopy;
    
    self.imageArray = @[image1,image2,image3,image4].mutableCopy;
    
}
// 设置有几个分区
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return  self.mutabArray.count;
}

// 设置每个分区有多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.mutabArray[section] count];
}

// 设置cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell  = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"];
    }
    
    // 设置每行内容
    cell.textLabel.text = self.mutabArray[indexPath.section][indexPath.row];
    
    // 设置图片
    cell.imageView.image = [UIImage imageNamed:self.imageArray[indexPath.section][indexPath.row]];
    
    // 设置辅助视图
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NextViewController * next = [[NextViewController alloc] init];
    
    next.string = self.mutabArray[indexPath.section][indexPath.row];
    
    [self.navigationController pushViewController:next animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
