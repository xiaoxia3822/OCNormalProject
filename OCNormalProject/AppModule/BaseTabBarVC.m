//
//  BaseTabBarVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "BaseTabBarVC.h"
#import "HomeVC.h"
#import "ContentVC.h"
#import "MineVC.h"

@interface BaseTabBarVC ()

@end

@implementation BaseTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];

    UITabBar *tabBar = [UITabBar appearance];
    [tabBar setTintColor:UIColorFromRGB(0x0FB5BA)];
    
    // 首页
    HomeVC *homeVC = [[HomeVC alloc]init];
    [self setViewController:homeVC title:@"首页" image:@"TB_home_normal" selectImage:@"TB_home_press"];
    // 功能
    ContentVC *contentVC = [[ContentVC alloc]init];
    [self setViewController:contentVC title:@"功能" image:@"TB_function_normal" selectImage:@"TB_function_press"];
    // 我的
    MineVC *mineVC = [[MineVC alloc]init];
    [self setViewController:mineVC title:@"我的" image:@"TB_mine_normal" selectImage:@"TB_mine_press"];

//    self.customTabbar = [[Tabbar alloc]initWithCenterImage:@"homePage_saoyisao" selectImage:@"homePage_saoyisao" target:self action:@selector(CenterButtonClick)];
//    [self setValue:self.customTabbar forKey:@"tabBar"];
}

#pragma mark - 添加子控制器
-(void)setViewController:(BaseViewController *)viewController title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage {
    static NSInteger index = 0;
    viewController.tabBarItem.title = title;
    viewController.title = title;
    viewController.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.tag = index;
    index++;
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:viewController];
    [self addChildViewController:nav];
}

//- (void)CenterButtonClick {
//    CenterViewController *centerVC = [[CenterViewController alloc]init];
//    [self presentViewController:centerVC animated:YES completion:nil];
//}

@end
