//
//  XLTabViewController.m
//  Aperture
//
//  Created by zhaoxiaolu on 16/5/13.
//  Copyright © 2016年 石头剪刀布. All rights reserved.
//

#import "XLTabViewController.h"
#import "XLNavViewController.h"
#import "IndexViewController.h"
#import "MineViewController.h"

@interface XLTabViewController ()

@end

@implementation XLTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加子控制器
    [self addChildVC:[[IndexViewController alloc] init] title:@"首页" image:nil selectedImage:nil];
    [self addChildVC:[[MineViewController alloc] init] title:@"我" image:nil selectedImage:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addChildVC:(UIViewController *)childVC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    
    // 设置子控制器的文字(可以设置tabBar和navigationBar的文字)
    childVC.title = title;
    
    // 设置子控制器的tabBarItem图片
    childVC.tabBarItem.image = [UIImage imageNamed:image];
    // 禁用图片渲染
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]} forState:UIControlStateNormal];
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor orangeColor]} forState:UIControlStateSelected];
    
    // 这句代码会自动加载控制器的view，但是view要在我们用的时候去提前加载
    childVC.view.backgroundColor = RandomColor;
    
    // 为子控制器包装导航控制器
    XLNavViewController *navigationVc = [[XLNavViewController alloc] initWithRootViewController:childVC];
    // 添加子控制器
    [self addChildViewController:navigationVc];
    
}

@end
