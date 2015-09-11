//
//  RootView.m
//  HomeWork09Day
//
//  Created by lxh on 15/9/5.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "RootView.h"

@implementation RootView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self show];
    }
    return self;
}

-(void)show{
    self.backgroundColor = [UIColor orangeColor];
    
    // 创建一个tableView
    
    self.tableView = [[UITableView alloc] initWithFrame:self.bounds style:(UITableViewStyleGrouped)];
    
    [self addSubview:self.tableView];
}

@end
