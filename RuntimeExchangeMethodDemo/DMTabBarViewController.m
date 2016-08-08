//
//  DMTabBarViewController.m
//  RuntimeExchangeMethodDemo
//
//  Created by demin on 16/7/22.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import "DMTabBarViewController.h"

@interface DMTabBarViewController ()

@end

@implementation DMTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTabBarChildController];
}

- (void)setupTabBarChildController {
    NSArray *imageArray = @[@"home", @"category", @"center", @"cart", @"mine"];
    NSArray *titleArray = @[@"首页", @"分类", @"", @"购物车", @"我"];
    for (int i = 0; i < imageArray.count; i++) {
        UIViewController *vc = [[UIViewController alloc] init];
        [vc.view setBackgroundColor:[UIColor whiteColor]];
        //修改图片可以查看不同的效果 imageArray[i]
        vc.tabBarItem.image = [[UIImage imageNamed:imageArray[2]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:[imageArray[2]stringByAppendingString:@"_select"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.title = titleArray[i];
        if (i == 3) {
            vc.tabBarItem.badgeValue = @"99";
        }
        [self addChildViewController:vc];
    }
}





@end
