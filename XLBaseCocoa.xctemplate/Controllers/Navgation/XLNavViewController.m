//
//  XLNavViewController.m
//  Aperture
//
//  Created by zhaoxiaolu on 16/5/13.
//  Copyright © 2016年 石头剪刀布. All rights reserved.
//

#import "XLNavViewController.h"

@interface XLNavViewController ()

@end

@implementation XLNavViewController

// 只初始化一次
+ (void)initialize {
    
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"nav"]
                                       forBarMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          [UIColor whiteColor], NSForegroundColorAttributeName,
                          [UIFont systemFontOfSize:18.0], NSFontAttributeName,
                          nil];
    [[UINavigationBar appearance] setTitleTextAttributes:dict];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor whiteColor], NSForegroundColorAttributeName,
                                                          [UIFont systemFontOfSize:12.0], NSFontAttributeName,
                                                          nil]
                                                forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  拦截所有push进来的控制器
 *
 *  @param viewController
 *  @param animated
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count > 0) {
        // 此时push进来的viewController是第二个子控制器
        // 自动隐藏tabbar
        viewController.hidesBottomBarWhenPushed = YES;
        
        // 定义leftBarButtonItem
//        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTargat:self action:@selector(back) image:@"navigationbar_back" highImage:@"navigationbar_back_highlighted"];
        
        // 定义rightBarButtonItem
//        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTargat:self action:@selector(more) image:@"navigationbar_more" highImage:@"navigationbar_more_highlighted"];
    }
    
    // 调用父类pushViewController，self.viewControllers数组添加对象viewController
    [super pushViewController:viewController animated:animated];
}

@end
