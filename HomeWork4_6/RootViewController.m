//
//  RootViewController.m
//  HomeWork4_6
//
//  Created by lxh on 15/8/29.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "RootViewController.h"
#import "RootView.h"
#import "RedViewController.h"
#import "GreenViewController.h"
@interface RootViewController ()

@property (nonatomic, strong) RootView * rv;

// 声明属性
@property (nonatomic, strong) RedViewController * rVC;
@property (nonatomic, strong) GreenViewController * gVC;

@end

@implementation RootViewController

-(void)loadView {
    self.rv = [[RootView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.rv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建控制器
    self.rVC = [[RedViewController alloc] init];
    
    self.gVC = [[GreenViewController alloc] init];
    
    // 创建视图
    UIView * countView = [[UIView alloc] init];
    
    countView.frame = CGRectMake(0, CGRectGetMaxY(self.view.frame) - 50, CGRectGetWidth(self.view.frame), 50);
    
    countView.backgroundColor = [UIColor whiteColor];
    
    countView.tag = 101;
    
    [self.view addSubview:countView];
    
    // 创建Button
    
    UIButton * button1 = [UIButton buttonWithType:(UIButtonTypeSystem)];
    
    button1.frame = CGRectMake(0, 0, CGRectGetWidth(countView.frame) / 2.0, CGRectGetHeight(countView.frame));
    
    button1.backgroundColor = [UIColor grayColor];
    
    [button1 setTitle:@"红色" forState:(UIControlStateNormal)];
    
    [button1 addTarget:self action:@selector(onclickRed:) forControlEvents:(UIControlEventTouchUpInside)];
    
    
    // 第二个按钮
    UIButton * button2 = [UIButton buttonWithType:(UIButtonTypeSystem)];
    
    button2.frame = CGRectMake(CGRectGetMaxX(button1.frame), CGRectGetMinY(button1.frame), CGRectGetWidth(countView.frame) / 2.0, CGRectGetHeight(countView.frame));
    
    button2.backgroundColor = [UIColor purpleColor];

    [button2 setTitle:@"绿色" forState:(UIControlStateNormal)];
    
    [button2 addTarget:self action:@selector(onclickGreen:) forControlEvents:(UIControlEventTouchUpInside)];
    
    // 接收button
    [countView addSubview:button1];
    
    [countView addSubview:button2];
    
    // 确定关系
    [self addChildViewController:self.rVC];
    
    [self addChildViewController:self.gVC];
    
    // 显示视图
    [self.view addSubview:self.rVC.view];
    
    [self.view bringSubviewToFront:countView];
}

-(void)onclickRed:(UIButton *)send {
    [self transitionFromViewController:self.gVC toViewController:self.rVC duration:1 options:(UIViewAnimationOptionTransitionCurlDown) animations:^{
        [self.view bringSubviewToFront:[self.view viewWithTag:101]];
    }completion:^(BOOL finished) {
        
    }];
}


-(void)onclickGreen:(UIButton *)send {
    [self transitionFromViewController:self.rVC toViewController:self.gVC duration:1 options:(UIViewAnimationOptionTransitionCurlUp) animations:^{
        [self.view bringSubviewToFront:[self.view viewWithTag:101]];
    }completion:^(BOOL finished) {
        
    }];
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
