//
//  NextViewController.m
//  HomeWork09Day
//
//  Created by lxh on 15/9/5.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

-(void)viewWillAppear:(BOOL)animated {
    
    self.lable.text = self.string;
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView * image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3.jpg"]];
    
    image.frame = CGRectMake(0, 60, 375, 607);
    
    [self.view addSubview:image];
    
    self.lable = [[UILabel alloc] init];
    
    self.lable.backgroundColor = [UIColor orangeColor];
    
    self.lable.frame = CGRectMake(220, 80, 150, 50);
    
    self.lable.alpha = 0.4;
    
    self.navigationItem.title = @"Girl";
    
    self.lable.layer.cornerRadius = 10;
    
    self.lable.layer.masksToBounds = YES;
    
    
    [self.view addSubview:self.lable];
    
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
